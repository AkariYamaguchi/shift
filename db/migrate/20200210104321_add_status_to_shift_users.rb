class AddStatusToShiftUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :shift_users, :status, :integer, null: false, default: 0
  end
end
