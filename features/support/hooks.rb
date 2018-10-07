After do |scenario|
 Capybara.reset_session!
 browser.manage.delete_all_cookies
end
