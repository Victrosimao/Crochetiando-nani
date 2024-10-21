from django.urls import path
from .views import *

urlpatterns = [
    path('', homepage, name="homepage"),
    path('loja/', loja, name="loja"),
    path('loja/<str:filtro>/', loja, name="loja"),
    path('produto/<int:id_produto>/', ver_produto, name="ver_produto"),    
    path('carrinho/', carrinho, name="carrinho"),
    path('checkout/', checkout, name="checkout"),
    path('adicionar_carrinho/<int:id_produto>/', adicionar_carrinho, name="adicionar_carrinho"),
    path('remover_carrinho/<int:id_produto>/', remover_carrinho, name="remover_carrinho"),
    path('adicionar_endereco/', adicionar_endereco, name="adicionar_endereco"),
    
    path('minhaconta/', minha_conta, name="minha_conta"),
    path('login/', fazer_login, name="fazer_login"),
    path('criar_conta/', criar_conta, name="criar_conta"),
]