#language: pt

    Funcionalidade: Adicionar endereço novo
    Eu como usuário
    Quero me logar no sistema
    Para adicionar um endereço novo
        
    @addendereco
    Esquema do Cenário: Adicionar endereço com campos obrigatórios válidos
    Dado que eu esteja logado no sistema com sucesso com <email>,<senha>
    E selecionar o link Addresses
    E selecionar o link New Address
    Quando preencher os campos <nome>,<sobrenome>,<endereco1>,<cidade>,<cep>
    E selecionar o botão Create Address
    Então o sistema deve cadastrar novo endereço com sucesso

    Exemplos:
    | email                   | senha         | nome      | sobrenome     | endereco1     | cidade            | cep           |
    | "email001@teste.com.br" | "Teste@1234"  | "Maria"   | "Oliveira"    | "Rua  100"    | "São Paulo"       | "05015000"    |
    | "email002@teste.com.br" | "Teste@1234"  | "João"    | "Silva"       | "Rua  500"    | "Rio de Janeiro"  | "05407002"    |
