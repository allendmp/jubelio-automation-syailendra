require 'selenium-webdriver'

# Inisialisasi driver
driver = Selenium::WebDriver.for :chrome

# Navigasi ke halaman login Jubelio
driver.get "https://app.jubelio.com/login"

# Isi formulir login
email_field = driver.find_element(name: "email")
password_field = driver.find_element(name: "password")
login_button = driver.find_element(css: "button[type='submit']")

email_field.send_keys "qa.rakamin.jubelio@gmail.com"
password_field.send_keys "Jubelio123!"
login_button.click

# Tunggu beberapa saat untuk memastikan proses login selesai
sleep 5

# Cetak judul halaman setelah login
puts "Judul halaman setelah login: #{driver.title}"

# Tutup browser
driver.quit