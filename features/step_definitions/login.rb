Given("the customer wants to login") do
  @home = HomePage.new
  @home.access_myaccount
end

Given("fill the form with his datas") do
  @costumer = costumer('costumer already exist')
  @identify = IdentifyPage.new
  @identify.fill_email(@costumer)
  @login = LoginPage.new
  @login.fill_login(@costumer)
end

Then("the customer should be logged") do
  @account_page = AccountPage.new
  expect(@account_page).to be_displayed
  expect(@login).not_to be_displayed
end

Given("fill the form with an incorrect email") do
  @costumer = costumer('costumer with non existing email')
  @identify = IdentifyPage.new
  @identify.fill_email(@costumer)
end

Given("fill the form with an incorrect password") do
  @costumer = costumer('costumer typed incorrect password')
  @identify = IdentifyPage.new
  @identify.fill_email(@costumer)
  @login = LoginPage.new
  @login.fill_login(@costumer)
end

Then("the customer should see an error email message") do
  expect(@identify).to have_non_existent_email
end

Then("the customer should see an error password message") do
  expect(@login).to have_incorrect_password
end
