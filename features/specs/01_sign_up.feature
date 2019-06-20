#language: pt

    Funcionalidade: Criar conta nova
    Eu como usuário
    Quero criar uma conta nova
    Para acessar minha página home
        
    @cadastro
    Esquema do Cenário: Cadastro com campos obrigatórios válidos
    Dado que eu esteja na página de cadastro
    Quando preencher os campos <email>,<senha>
    E selecionar o botão Sign up
    Então o sistema deve exibir a página de home com sucesso

    Exemplos:
    | email                       | senha        |
    | "email001@teste.com.br"     | "Teste@1234" |
    | "email002@teste.com.br"     | "Teste@1234" |
