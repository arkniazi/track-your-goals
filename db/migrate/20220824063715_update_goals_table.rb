# frozen_string_literal: true

class UpdateGoalsTable < ActiveRecord::Migration[7.0]
  def change
    add_column(:goals, :alert_id, :int)
    add_column(:goals, :last_alert_generated_at, :datetime)
  end
end
