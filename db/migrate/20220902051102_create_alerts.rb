class CreateAlerts < ActiveRecord::Migration[7.0]
  def change
    create_table :alerts do |t|
      t.string :title
      t.integer :interval

      t.timestamps
    end
  end
end
