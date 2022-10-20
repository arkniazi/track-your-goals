# frozen_string_literal: true

class CardComponent < ViewComponent::Base
  def initialize(goal: , alert: nil)
    @goal = goal
    @alert = alert
  end

end
