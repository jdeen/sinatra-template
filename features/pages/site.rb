module Features
  module Pages
    
    class Site < BrowserContainer
      def home_page
        @home_page = Home.new(@browser)
      end

      def login_page
        @login_page = Login.new(@browser)
      end

      def register_page
        @register_page = Register.new(@browser)
      end
    end

  end
end
