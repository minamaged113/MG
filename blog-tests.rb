require "selenium-webdriver"
require "rspec"

argInput = ENV["username"]
timestamp = (Time.now.to_i).to_s
userName = argInput+timestamp
userEmail = userName+"@example.com"

describe "Blog application" do
  describe "signup to the blog application" do
    it "confirm that a user can successfully signup" do
  	   	
	    driver = Selenium::WebDriver.for :firefox
		# Go to signup form
		driver.navigate.to "https://selenium-blog.herokuapp.com/signup"
		# Fill out and submit form
		userNameInput = driver.find_element(id: 'user_username')
		userNameInput.send_keys(userName)

		userEmailInput = driver.find_element(id: 'user_email')
		userEmailInput.send_keys(userEmail)

		userPasswordInput = driver.find_element(id: 'user_password')
		userPasswordInput.send_keys("password")

		submitBtn = driver.find_element(id: 'submit')
		submitBtn.click

		# Confirm user is signed up successfully
		banner = driver.find_element(id: 'flash_success')
		banner_text = banner.text
		expect(banner_text).to eq("Welcome to the alpha blog "+userName)

		driver.quit
	end
  end
end
