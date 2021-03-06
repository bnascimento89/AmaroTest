class Register < SitePrism::Page
  set_url_matcher %r{/register}

  element :field_name, 'input[name="name"]'
  element :field_last_name, 'input[name="lastname"]'
  element :field_email, 'input[name="email"]', match: :first
  element :field_cpf, 'input[name="cpf"]'
  element :field_birth_date, 'input[name="birthdate"]'
  element :field_phone, 'input[name="phone"]'
  element :field_password, 'input[name="password"]'
  element :field_password_confirmation, 'input[name="passwordConfirmation"]'
  element :button_submit_register, 'button[type="submit"]', text: "CADASTRAR"

  # Methods that belong to this page
  def fill_register(costumer)
    field_name.set costumer.name
    field_last_name.set costumer.last_name
    field_email.set costumer.email
    field_cpf.set costumer.cpf
    field_birth_date.set costumer.birthdate
    field_phone.set costumer.phone
    field_password.set costumer.password
    field_password_confirmation.set costumer.password_confirmation
    button_submit_register.click
  end

end
