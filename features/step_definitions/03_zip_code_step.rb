Dado("que eu envie uma requisição de consulta de CEP válido") do
    @getConsulta = HTTParty.get("https://viacep.com.br/ws/01001000/json/")
end
  
  Quando("obter os dados do endereço solicitado") do
    puts @getConsulta
end
  
Então("o sistema retorna status de sucesso {int}") do |sucesso|
    expect(@getConsulta.code).to eq sucesso
end

Então("exibo o CEP do retorno do endereço") do
    puts(@getConsulta["cep"])
end

Então("exibo a Localidade do retorno do endereço") do
    puts(@getConsulta["localidade"])
end