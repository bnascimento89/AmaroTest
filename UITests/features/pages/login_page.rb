class LoginPage < SitePrism::Page
  set_url "#{AMARO_URL}/login"
  set_url_matcher %r{/login}

  element :input_email_or_cpf, 'input[name="emailOrCpf"]'
  element :input_password, 'input[name="password"]'
  element :button_submit, 'button[type="submit"]', text: "ENTRAR"
  element :incorrect_password, '.app__alert__content',text: "Senha incorreta, tente novamente."

  # Methods that belong to this page
  def fill_login(user)
    if input_email_or_cpf.to_s.empty?
      input_email_or_cpf.set user.email
    end
    input_password.set user.password
    button_submit.click
  end
end
