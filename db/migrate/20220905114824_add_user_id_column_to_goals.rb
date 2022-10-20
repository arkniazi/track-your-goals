class AddUserIdColumnToGoals < ActiveRecord::Migration[7.0]
  def change
    add_column :goals, :user_id, :int
  end
end
