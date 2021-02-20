Dir["path/to/pages/* .rb"].each {|file| require file}

class BasePage

    attr_accessor :driver
    def initialize(webDriver)
        @driver = webDriver
    end
  
    def irPara
        @driver.navigate.to("https://www.automacaobatista.herokuapp.com/")
    end
    
end