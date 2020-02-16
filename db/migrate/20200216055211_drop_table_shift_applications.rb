class DropTableShiftApplications < ActiveRecord::Migration[5.2]
  def change
    drop_table :shift_applications
  end
end
