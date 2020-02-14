class RemoveApplyStatusFromShiftUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :shift_users, :apply_status, :string
  end
end
