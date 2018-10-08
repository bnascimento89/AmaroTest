Given("the costumer wants to create an account") do
  @home = HomePage.new
  @home.access_myaccount
  @identify = IdentifyPage.new
  @identify.go_to_register
end

Given("fill the form with all requested datas") do
  @costumer = costumer('new customer')
  @register = Register.new
  @register.fill_register(@costumer)
end

Then("the costumer should have an account created") do
  @account_page = AccountPage.new
  expect(@account_page).to be_displayed
  expect(@register).not_to be_displayed
end
