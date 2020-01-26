class RemoveShiftIdFromShifts < ActiveRecord::Migration[5.2]
  def change
    remove_column :shifts, :shift_id, :integer
  end
end
