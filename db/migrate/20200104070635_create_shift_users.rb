class CreateShiftUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :shift_users do |t|
      t.integer :user_id
      t.integer :shift_id
      t.integer :work_type, null: :false, limit: 1

      t.timestamps
    end
  end
end
