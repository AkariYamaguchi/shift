class AddApplyStatusToShiftUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :shift_users, :apply_status, :string, null: false, default: 'applying'
  end
end
