require "selenium-webdriver"
require "rspec"
require_relative "SignupPage.rb"
require_relative "UsersPage.rb"

timestamp = (Time.now.to_i).to_s
userName = "testUser"+timestamp
userEmail = userName+"@example.com"
expectedBannerText = "Welcome to the alpha blog "+userName

describe "Blog application" do
  describe "signup to the blog application" do
	
	it "confirm that a user can successfully signup" do
  	   	
	    @driver = Selenium::WebDriver.for :remote, url: "http://192.168.1.8:40000/wd/hub", desired_capabilities: :firefox
		# Go to signup form
		@driver.navigate.to "https://selenium-blog.herokuapp.com/signup"

		signupPage = SignupPage.new(@driver)

		signupPage.enterUserName(userName)
		
		signupPage.enterUserEmail(userEmail)

		signupPage.enterPassword("password")

		signupPage.submit()


		# Confirm user is signed up successfully
		usersPage = UsersPage.new(@driver)
		banner_text = usersPage.getBannerText()
		expect(banner_text).to eq(expectedBannerText)

		@driver.quit
	end
  end
end
