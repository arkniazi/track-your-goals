# frozen_string_literal: true

class CreateGoals < ActiveRecord::Migration[7.0]
  def change
    create_table :goals do |t|
      t.string :name
      t.string :desc
      t.datetime :start_at
      t.datetime :end_at
      t.boolean :active, default: true
      t.boolean :completed, default: false
      t.integer :parent_id
      t.timestamps
    end
  end
end
