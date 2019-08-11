class UsersPage
    # CSS selectors
    SUCCESS_BANNER = {id: "flash_success"}
    attr_reader :driver
    # class methods

    def initialize(driver)
        @driver = driver
    end
    
    def getBannerText()
        banner = @driver.find_element(SUCCESS_BANNER)
        banner.text
    end
end