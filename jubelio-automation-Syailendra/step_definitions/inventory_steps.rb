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

When("I navigate to the {string} page") do |menu|
  menu_field = @driver.find_element(css: ".metismenu-container:nth-child(1) > .metismenu-item:nth-child(2) > .metismenu-link")
  menu_field.click
  submenu_field = @driver.find_element(css: ".metismenu-item:nth-child(2) > .visible > .metismenu-item:nth-child(2) > .metismenu-link")
  submenu_field.click

  sleep 5
end

When("I search for {string}") do |search_term|
  search_field = @driver.find_element(css: ".input-group > .form-control")
  search_button = @driver.find_element(css: ".input-group-btn > .btn")

  search_field.send_keys search_term
  search_button.click

  sleep 3
end

When("I select the checkbox") do
  checkbox_field = @driver.find_element(css: "span .react-grid-checkbox-label")
  checkbox_field.click

  sleep 2
end

When("I click the {string} button") do |button|
  button_field = @driver.find_element(xpath: "//div[@id='page-wrapper']/div[3]/div/div/div/div[2]/div/div/div/div/div/div/div[2]/div/button[2]/span")
  button_field.click

  sleep 3
end

When("I double click the quantity field") do
  qtyawal_field = @driver.find_element(xpath: "//div[@id='page-wrapper']/div[3]/div/div/div/div[2]/div/div/div/div/div[1]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div[2]/div/div/div[2]/div[1]/div/div[2]/div")
  @driver.action.double_click(qtyawal_field).perform

  sleep 2
end

When("I fill in the quantity with {string}") do |quantity|
  qty_field = @driver.find_element(:class, 'editor-main')
  qty_field.send_keys quantity

  sleep 2
end

When("I close the quantity input") do
  random_field = @driver.find_element(xpath: "//*[@id='page-wrapper']/div[3]/div/div/div/div[2]/div/div/div/div/div[1]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div[2]/div/div/div[2]/div[1]/div/div[3]/div")
  random_field.click
end

When("I submit the form") do
  submitakhir_field = @driver.find_element(css: ".pull-right > .ladda-button")
  submitakhir_field.click
  sleep 10
end

Then("I should see a success message") do
  # Add assertion here if needed
end

After do
  @driver.quit
end
