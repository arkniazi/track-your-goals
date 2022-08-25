class CreateAlertTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :alert_types do |t|
      t.string :title
      t.integer :interval
      t.timestamps
    end
  end
end
