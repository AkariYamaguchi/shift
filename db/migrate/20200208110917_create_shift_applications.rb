# frozen_string_literal: true

class CreateShiftApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :shift_applications, &:timestamps
  end
end
