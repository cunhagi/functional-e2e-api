
Before do
  page.driver.browser.manage.window.maximize
  @cadastrar = SignUpPage.new 
  @form1 = Cadastro.new
  @entrar = SignInPage.new
  @form2 = Endereco.new
end

After do
   Capybara.reset_sessions!
end

# time out
Capybara.default_max_wait_time = 30
