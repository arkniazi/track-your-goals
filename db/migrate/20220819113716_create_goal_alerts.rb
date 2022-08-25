# frozen_string_literal: true

class CreateGoalAlerts < ActiveRecord::Migration[7.0]
  def change
    create_table :goal_alerts do |t|
      t.integer :goal_id
      t.string :question
      t.string :answer
      t.datetime :initiated_at
      t.datetime :completed_at
      t.string :status
      t.timestamps
    end
  end
end
