# frozen_string_literal: true

class NavbarComponent < ViewComponent::Base
    def initialize(user_name: nil ,user_email: nil)
    @user_name = user_name
    @user_email = user_email
    end
end
