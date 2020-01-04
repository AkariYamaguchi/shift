class CreateShiftUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :shift_users do |t|
      t.integer :user_id
      t.integer :shift_id
      t.integer :work_type

      t.timestamps
    end
  end
end
