# frozen_string_literal: true

class ButtonComponent < ViewComponent::Base
  def initialize(title:, type:)
    @title = title
    @type = type || ''
  end
end
