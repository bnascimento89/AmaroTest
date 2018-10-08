class HomePage < SitePrism::Page
  set_url "#{AMARO_URL}"

  element :button_myaccount, '.app__header__account'

  # Methods that belong to this page
  def access_myaccount
    button_myaccount.click
  end
end
