from django.db import models
from django.contrib.auth.models import User


class Cliente(models.Model):
    nome = models.CharField(max_length=200, null=True, blank=True)
    email = models.CharField(max_length=200, null=True, blank=True)
    telefone = models.CharField(max_length=200, null=True, blank=True)
    id_sessao = models.CharField(max_length=200, null=True, blank=True)
    usuario = models.OneToOneField(User, null=True, blank=True, on_delete=models.CASCADE)

    def __str__(self) -> str:
        return str(self.email)
    
class Categoria(models.Model):
    nome = models.CharField(max_length=200, null=True, blank=True)
    slug = models.CharField(max_length=200, null=True, blank=True)
    
    def __str__(self):
        return str(self.nome)

class Tipo(models.Model):
    nome = models.CharField(max_length=200, null=True, blank=True)
    slug = models.CharField(max_length=200, null=True, blank=True)

    def __str__(self):
        return str(self.nome)

class Produto(models.Model):
    imagem = models.ImageField(null=True, blank=True)
    nome = models.CharField(max_length=200, null=True, blank=True)
    preco = models.DecimalField(max_digits=10, decimal_places=2)
    ativo = models.BooleanField(default=True)
    categoria = models.ForeignKey(Categoria, null=True, blank=True, on_delete=models.SET_NULL)
    tipo = models.ForeignKey(Tipo, null=True, blank=True, on_delete=models.SET_NULL)
    peso = models.DecimalField(max_digits=5, decimal_places=2, default=3)  
    comprimento = models.DecimalField(max_digits=5, decimal_places=2, default=20)  
    altura = models.DecimalField(max_digits=5, decimal_places=2, default=20)  
    largura = models.DecimalField(max_digits=5, decimal_places=2, default=20)  

    def __str__(self):
        return f"Nome: {self.nome} / Categoria: {self.categoria} / Tipo: {self.tipo} / Preço: {self.preco}"
    
    def total_vendas(self):
        itens = ItensPedido.objects.filter(pedido__finalizado=True, item_estoque__produto=self.id)
        total = sum([item.quantidade for item in itens])
        return total

class ItemEstoque(models.Model):
    produto = models.ForeignKey(Produto, null=True, blank=True, on_delete=models.SET_NULL)
    quantidade = models.IntegerField(default=0)

    def __str__(self):
        return f"Nome: {self.produto.nome}"

class Endereco(models.Model):
    rua = models.CharField(max_length=400, null=True, blank=True)
    numero = models.IntegerField(default=0)
    complemento = models.CharField(max_length=200, null=True, blank=True)
    cep = models.CharField(max_length=200, null=True, blank=True)
    cidade = models.CharField(max_length=200, null=True, blank=True)
    estado = models.CharField(max_length=200, null=True, blank=True)
    cliente = models.ForeignKey(Cliente, null=True, blank=True, on_delete=models.SET_NULL)

    def __str__(self):
        return f"Cliente: {self.cliente} / Rua: {self.rua} / Numero: {self.numero} / CEP: {self.cep} / Cidade: {self.cidade} / Estado: {self.estado}"

class Pedido(models.Model):
    cliente = models.ForeignKey(Cliente, null=True, blank=True, on_delete=models.SET_NULL)
    finalizado = models.BooleanField(default=False)
    codigo_transacao = models.CharField(max_length=200, null=True, blank=True)
    endereco = models.ForeignKey(Endereco, null=True, blank=True, on_delete=models.SET_NULL)
    data_finalizacao = models.DateTimeField(null=True, blank=True)

    def __str__(self) -> str:
        return f"id_pedido: {self.id} / Cliente: {self.cliente} / Finalizado {self.finalizado}"

    @property
    def quantidade_total(self):
        itens_pedido = ItensPedido.objects.filter(pedido=self.id)
        quantidade = sum([item.quantidade for item in itens_pedido])
        return quantidade
    
    @property
    def preco_total(self):
        itens_pedido = ItensPedido.objects.filter(pedido=self.id)
        preco = sum([item.preco_total for item in itens_pedido])
        return preco
    
    @property
    def itens(self):
        itens_pedido = ItensPedido.objects.filter(pedido_id=self.id)
        return itens_pedido

class ItensPedido(models.Model):
    item_estoque = models.ForeignKey(ItemEstoque, null=True, blank=True, on_delete=models.SET_NULL)
    quantidade = models.IntegerField(default=0)
    pedido = models.ForeignKey(Pedido, null=True, blank=True, on_delete=models.SET_NULL)

    def __str__(self) -> str:
        return f"Id pedido: {self.pedido.id} / Produto: {self.item_estoque.produto.nome}"

    @property
    def preco_total(self):
        return self.quantidade * self.item_estoque.produto.preco

class Banner(models.Model):
    imagem = models.ImageField(null=True, blank=True)
    link_destino = models.CharField(max_length=400, null=True, blank=True)
    ativo = models.BooleanField(default=False)

    def __str__(self):
        return f"{self.link_destino} - Ativo: {self.ativo}"

class Pagamento(models.Model):
    id_pagamento = models.CharField(max_length=400)
    pedido = models.ForeignKey(Pedido, null=True, blank=True, on_delete=models.SET_NULL)
    aprovado = models.BooleanField(default=False)

    def __str__(self) -> str:
        return f"Id pedido: {self.pedido.id} - Data : {self.pedido.data_finalizacao}"
    
class Avaliacao(models.Model):
    usuario = models.ForeignKey(User, on_delete=models.CASCADE)
    produto = models.CharField(max_length=255)  # Aqui você pode usar um campo relacionado ao modelo Produto
    comentario = models.TextField()
    data_criacao = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f"Avaliação de {self.usuario.username} sobre {self.produto}"