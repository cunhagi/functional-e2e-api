Dado("que eu esteja logado no sistema com sucesso com {string},{string}") do |email, senha|
    @entrar.load
    @form2.preencherFormEntrar email,senha
    @form2.clickEntrar
  end
  
  Dado("selecionar o link Addresses") do
    @form2.clickEnderecos
  end
  
  Dado("selecionar o link New Address") do
    @form2.clickNovoEndereco
  end
  
  Quando("preencher os campos {string},{string},{string},{string},{string}") do |nome,sobrenome,endereco1,cidade,cep|
    @form2.preencherFormEndereco nome,sobrenome,endereco1,cidade,cep
  end
  
  Quando("selecionar o botão Create Address") do
    @form2.clickCriarEndereco
  end
  
  Então("o sistema deve cadastrar novo endereço com sucesso") do
    assert_text("Address was successfully created.")
end