class Cadastro < SitePrism::Page
    element :cmpEmail , '#user_email'
    element :cmpSenha,  '#user_password'
    element :btnCadastrar,  '.btn-primary'

    def preencherFormCadastrar (email,senha)
        cmpEmail.set email
        cmpSenha.set senha
    end

    def clickCadastrar
        btnCadastrar.click
    end
end

class Endereco < SitePrism::Page
    element :cmpEmailEntrar, '#session_email'
    element :cmpSenhaEntrar, '#session_password'
    element :btnEntrar,  '.btn-primary'
    element :linkEnderecos,  "a[href='/addresses']"
    element :linkNovoEndereco,  "a[href='/addresses/new']"
    element :cmpNomeEndereco, '#address_first_name'
    element :cmpSobrenomeEndereco, '#address_last_name'
    element :cmpRuaEndereco, '#address_street_address'
    element :cmpCidadeEndereco, '#address_city'
    element :cmpCepEndereco, '#address_zip_code'
    element :btnCriarEndereco,  '.btn-primary'

    def preencherFormEntrar (email,senha)
        cmpEmailEntrar.set email
        cmpSenhaEntrar.set senha
    end

    def clickEntrar
        btnEntrar.click
    end

    def clickEnderecos
        linkEnderecos.click
    end

    def clickNovoEndereco
        linkNovoEndereco.click
    end

    def preencherFormEndereco (nome,sobrenome,endereco1,cidade,cep)
        cmpNomeEndereco.set nome
        cmpSobrenomeEndereco.set sobrenome
        cmpRuaEndereco.set endereco1
        cmpCidadeEndereco.set cidade
        cmpCepEndereco.set cep
    end

    def clickCriarEndereco
        btnCriarEndereco.click
    end
end