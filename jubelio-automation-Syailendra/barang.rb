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

# Tunggu beberapa saat
sleep 5

# Klik menu barang
barang_field = driver.find_element(css: ".metismenu-container:nth-child(1) > .metismenu-item:nth-child(2) > .metismenu-link")
barang_field.click

# Klik menu persediaan
persediaan_field = driver.find_element(css: ".metismenu-item:nth-child(2) > .visible > .metismenu-item:nth-child(2) > .metismenu-link")
persediaan_field.click

# Tunggu beberapa saat 
sleep 5

# Isi search
search_field = driver.find_element(css: ".input-group > .form-control")
search_field.send_keys "wendy"

# Klik search
search_button = driver.find_element(css: ".input-group-btn > .btn")
search_button.click

# Tunggu beberapa saat 
sleep 3

# Klik checkbox
checkbox_field = driver.find_element(css: "span .react-grid-checkbox-label")
checkbox_field.click

# Tunggu beberapa saat 
sleep 2

# Klik penyesuaian
penyesuaian_field = driver.find_element(xpath: "//div[@id='page-wrapper']/div[3]/div/div/div/div[2]/div/div/div/div/div/div/div[2]/div/button[2]/span")
penyesuaian_field.click

# Tunggu beberapa saat 
sleep 3

# double klik quantity
qtyawal_field = driver.find_element(xpath: "//div[@id='page-wrapper']/div[3]/div/div/div/div[2]/div/div/div/div/div[1]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div[2]/div/div/div[2]/div[1]/div/div[2]/div")
driver.action.double_click(qtyawal_field).perform

# Tunggu beberapa saat
sleep 2

# Isi quantity
qty_field = driver.find_element(:class, 'editor-main')
qty_field.send_keys "2"

# Tunggu beberapa saat
sleep 2
random_field = driver.find_element(xpath: "//*[@id='page-wrapper']/div[3]/div/div/div/div[2]/div/div/div/div/div[1]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div[2]/div/div/div[2]/div[1]/div/div[3]/div")
random_field.click

# Klik tombol submit
sleep 3

submitakhir_field = driver.find_element(css: ".pull-right > .ladda-button")
submitakhir_field.click
sleep 10

# Tutup browser
driver.quit