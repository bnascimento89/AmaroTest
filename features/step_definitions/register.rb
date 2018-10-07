Given("the costumer wants to create an account") do
  @home = HomePage.new
  @home.access_myaccount
  @identify = IdentifyPage.new
  @identify.go_to_register
end

Given("fill the form with all requested datas") do
  @costumer = costumer('new customer')
  @register = Register.new
  @register.fill_register()
  sleep(30)
end

Then("the costumer should have an account created") do
  pending # Write code here that turns the phrase above into concrete actions
end
