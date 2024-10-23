from django.urls import path
from .views import *
from django.contrib.auth import views

urlpatterns = [
    #urls do site
    path('', homepage, name="homepage"),
    path('loja/', loja, name="loja"),
    path('loja/<str:filtro>/', loja, name="loja"),
    path('produto/<int:id_produto>/', ver_produto, name="ver_produto"),    
    path('carrinho/', carrinho, name="carrinho"),
    path('checkout/', checkout, name="checkout"),
    path('adicionar_carrinho/<int:id_produto>/', adicionar_carrinho, name="adicionar_carrinho"),
    path('remover_carrinho/<int:id_produto>/', remover_carrinho, name="remover_carrinho"),
    path('adicionar_endereco/', adicionar_endereco, name="adicionar_endereco"),
    
    #urls para usuario
    path('minhaconta/', minha_conta, name="minha_conta"),
    path('meus_pedidos/', meus_pedidos, name="meus_pedidos"),
    path('login/', fazer_login, name="fazer_login"),
    path('criar_conta/', criar_conta, name="criar_conta"),
    path('logout/', fazer_logout, name="fazer_logout"),

    #urls-views padrão do django para mudança de senha
    path("password_change/", views.PasswordChangeView.as_view(), name="password_change"),
    path("password_change/done/", views.PasswordChangeDoneView.as_view(), name="password_change_done"),
    path("password_reset/", views.PasswordResetView.as_view(), name="password_reset"),
    path("password_reset/done/", views.PasswordResetDoneView.as_view(), name="password_reset_done"),
    path("reset/<uidb64>/<token>/", views.PasswordResetConfirmView.as_view(), name="password_reset_confirm"),
    path("reset/done/", views.PasswordResetCompleteView.as_view(), name="password_reset_complete"),
]
