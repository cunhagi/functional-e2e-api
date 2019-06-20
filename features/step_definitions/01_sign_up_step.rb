Dado("que eu esteja na página de cadastro") do
     @cadastrar.load
end

Quando("preencher os campos {string},{string}") do |email, senha|
     @form1.preencherFormCadastrar email,senha
end

Quando("selecionar o botão Sign up") do
     @form1.clickCadastrar
end

Então("o sistema deve exibir a página de home com sucesso") do
     assert_text("Welcome to Address Book")
end   