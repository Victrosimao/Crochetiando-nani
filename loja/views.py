from django.shortcuts import render, redirect
from .models import *
import uuid
from .utils import filtrar_produtos, preco_minimo_maximo
from django.db.models import Max, Min

# Create your views here.
def homepage(request):
    banners = Banner.objects.filter(ativo=True)
    context = {"banners": banners}
    return render(request, 'homepage.html', context)

def loja(request, filtro=None):
    produtos = Produto.objects.filter(ativo=True)
    produtos = filtrar_produtos(produtos, filtro)
    
    minimo, maximo = preco_minimo_maximo(produtos)
   
    context = {"produtos": produtos, "minimo": minimo, "maximo": maximo,}
    return render(request, 'loja.html', context)

def ver_produto(request, id_produto):
    produto = Produto.objects.get(id=id_produto)
    itens_estoque = ItemEstoque.objects.filter(produto=produto)
    if len(itens_estoque) > 0:
        tem_estoque = True
    else:
        tem_estoque = False
    context = {"produto": produto, "itens_estoque" : itens_estoque, "tem_estoque" : tem_estoque}
    return render(request,"ver_produto.html", context)

def adicionar_carrinho(request, id_produto):
    if request.method == "POST" and id_produto:
        resposta = redirect('carrinho')
        if request.user.is_authenticated:
            cliente = request.user.cliente
        else:
            if request.COOKIES.get("id_sessao"):
                id_sessao = request.COOKIES.get("id_sessao")
            else:
                id_sessao = str(uuid.uuid4())
                resposta.set_cookie(key='id_sessao', value=id_sessao, max_age=60*60*24*7)
            cliente, criado = Cliente.objects.get_or_create(id_sessao=id_sessao)
        pedido, criado = Pedido.objects.get_or_create(cliente=cliente, finalizado=False)
        item_estoque = ItemEstoque.objects.get(produto_id=id_produto,)
        item_pedido, criado = ItensPedido.objects.get_or_create(item_estoque=item_estoque, pedido=pedido)
        item_pedido.quantidade += 1
        item_pedido.save()
        return resposta
    else:
        return redirect('loja')
    
def remover_carrinho(request, id_produto):
    if request.method == "POST" and id_produto:
        dados = request.POST.dict()
        if request.user.is_authenticated:
            cliente = request.user.cliente
        else:
             if request.COOKIES.get("id_sessao"):
                id_sessao = request.COOKIES.get("id_sessao")
                cliente, criado = Cliente.objects.get_or_create(id_sessao = id_sessao)
             else:
                 return redirect('loja')
        pedido, criado = Pedido.objects.get_or_create(cliente=cliente, finalizado=False)
        item_estoque = ItemEstoque.objects.get(produto_id=id_produto,)
        item_pedido, criado = ItensPedido.objects.get_or_create(item_estoque=item_estoque, pedido=pedido)
        item_pedido.quantidade -= 1
        item_pedido.save()
        if item_pedido.quantidade <=0:
            item_pedido.delete()
        return redirect('carrinho')
    else:
        return redirect('loja')

def carrinho(request):
    if request.user.is_authenticated:
        cliente = request.user.cliente
    else:
        if request.COOKIES.get("id_sessao"):
            id_sessao = request.COOKIES.get("id_sessao")
            cliente, criado = Cliente.objects.get_or_create(id_sessao = id_sessao)
        else:
            context = {"cliente_existente": False, "itens_pedido": None, "pedido": None}
            return render(request, 'carrinho.html', context)
    pedido, criado = Pedido.objects.get_or_create(cliente = cliente, finalizado= False)
    itens_pedido = ItensPedido.objects.filter(pedido=pedido)
    context = {'itens_pedido': itens_pedido, 'pedido': pedido, "cliente_existente": True}
    return render(request, 'carrinho.html', context)

def checkout(request):
    if request.user.is_authenticated:
        cliente = request.user.cliente
    else:
        if request.COOKIES.get("id_sessao"):
            id_sessao = request.COOKIES.get("id_sessao")
            cliente, criado = Cliente.objects.get_or_create(id_sessao = id_sessao)
        else:
            return redirect('loja')
    pedido, criado = Pedido.objects.get_or_create(cliente = cliente, finalizado= False)
    enderecos = Endereco.objects.filter(cliente=cliente)
    context = {"pedido": pedido, "enderecos": enderecos}
    return render(request, 'checkout.html', context)

def adicionar_endereco(request):
    if request.method == "POST":
        if request.user.is_authenticated:
            cliente = request.user.cliente
        else:
            if request.COOKIES.get("id_sessao"):
                id_sessao = request.COOKIES.get("id_sessao")
                cliente, criado = Cliente.objects.get_or_create(id_sessao = id_sessao)
            else:
                return redirect('loja')
        dados = request.POST.dict()
        endereco = Endereco.objects.create(cliente=cliente,
                                            rua=dados.get("rua"),
                                            numero=int(dados.get("numero")),
                                            complemento=dados.get("complemento"),
                                            cep=dados.get("cep"),
                                            cidade=dados.get("cidade"),
                                            estado=dados.get("estado"))
        endereco.save()
        return redirect("checkout")
    else:
        context = {}
        return render(request, "adicionar_endereco.html", context)

def minha_conta(request):
    return render(request, 'usuario/minha_conta.html')

def login(request):
    return render(request, 'usuario/login.html')