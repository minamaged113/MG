# set the requirements to ask for selenium WD
require "selenium-webdriver"

# [open the browser]
# create an instance of the WD for Firefox
driver = Selenium::WebDriver.for :firefox
# Navigate to google.com
driver.navigate.to "https://google.com"

element = driver.find_element(name: 'q')
element.click
element.send_keys "Hello WD!"
element.submit

# close the driver session
driver.quit
