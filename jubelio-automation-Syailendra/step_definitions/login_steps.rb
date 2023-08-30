require 'selenium-webdriver'

Given("I am on the Jubelio login page") do
  @driver = Selenium::WebDriver.for :chrome
  @driver.get "https://app.jubelio.com/login"
end

When("I log in with valid credentials") do
  email_field = @driver.find_element(name: "email")
  password_field = @driver.find_element(name: "password")
  login_button = @driver.find_element(css: "button[type='submit']")

  email_field.send_keys "qa.rakamin.jubelio@gmail.com"
  password_field.send_keys "Jubelio123!"
  login_button.click

  sleep 5
end

Then("I should see the title of the logged-in page") do
  logged_in_page_title = @driver.title
  puts "Judul halaman setelah login: #{logged_in_page_title}"

  # Add assertion here if needed
end

After do
  @driver.quit
end
