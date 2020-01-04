class CreateShifts < ActiveRecord::Migration[5.2]
  def change
    create_table :shifts do |t|
      t.integer :shift_id
      t.date :business_day

      t.timestamps
    end
  end
end
