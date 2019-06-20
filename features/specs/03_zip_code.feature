#language: pt

    Funcionalidade: Consultar endereço
    Eu como usuário
    Quero realizar uma consulta de CEP
    Para validar o serviço no retorno do endereço
        
    @consultarCepValido
    Cenário: Consultar endereço com CEP válido
    Dado que eu envie uma requisição de consulta de CEP válido
    Quando obter os dados do endereço solicitado 
    Então o sistema retorna status de sucesso 200

    @retornoCep  
    Cenário: Obter o retorno do CEP do endereço
    Dado que eu envie uma requisição de consulta de CEP válido
    Então exibo o CEP do retorno do endereço

    @retornoLocalidade
    Cenário: Obter o retorno da Localidade do endereço
    Dado que eu envie uma requisição de consulta de CEP válido
    Então exibo a Localidade do retorno do endereço