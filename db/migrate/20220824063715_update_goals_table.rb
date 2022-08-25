class UpdateGoalsTable < ActiveRecord::Migration[7.0]
  def change
    add_column :goals, :alert_type_id, :int
    add_column :goals, :last_alert_generated_at, :datetime
  end
end
