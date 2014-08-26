module Features
  module Pages

    class Home < BrowserContainer
      URL = "#{BASE_URL}"

      def submit_contact name, email, number, message
        name_field.set name
        email_field.set email
        number_field.set number
        message_field.set message

        login_button.click
      end

      private

      def name_field
        @browser.text_field(name: 'contact[name]')
      end

      def email_field
        @browser.text_field(name: 'contact[email]')
      end

      def number_field
        @browser.text_field(name: 'contact[number]')
      end

      def message_field
        @browser.text_field(name: 'contact[message]')
      end
    end

  end
end
