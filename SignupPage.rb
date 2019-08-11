class SignupPage
    # CSS Selectors
    USERNAME_FIELD = {id: "user_username"}
    EMAIL_FIELD = {id: "user_email"}
    PASSWORD_FIELD = {id: "user_password"}
    SUBMIT_BUTTON = {id: "submit"}

    attr_reader :driver
    
    def initialize(driver)
        @driver = driver
    end

    def enterUserName(userName)
        userNameInput = @driver.find_element(USERNAME_FIELD)
		userNameInput.send_keys(userName)
    end

    def enterUserEmail(userEmail)
        userEmailInput = @driver.find_element(EMAIL_FIELD)
		userEmailInput.send_keys(userEmail)
    end

    def enterPassword(userPassword)
        userPasswordInput = @driver.find_element(PASSWORD_FIELD)
		userPasswordInput.send_keys("password")
    end

    def submit()
        submitBtn = @driver.find_element(SUBMIT_BUTTON)
		submitBtn.click
    end

end
