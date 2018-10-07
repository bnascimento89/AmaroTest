class IdentifyPage < SitePrism::Page
  set_url "#{AMARO_URL}/identify"

  element :input_email_or_cpf, 'input[name="emailOrCpf"]'
  element :button_submit, 'button[type="submit"]', text: "ENVIAR"
  element :non_existent_email, '.app__alert__content', text:"E-mail ou CPF não está cadastrado. Gostaria de criar uma conta?"
  element :button_register, '.app__form__helpers'
  # Methods that belong to this page
  def fill_email(costumer)
    input_email_or_cpf.set costumer.email
    button_submit.click
  end

  def go_to_register
    button_register.click
  end
end
