class ShiftUser < ApplicationRecord
    enum work_type:{
    "午前": 1,
    "午後": 2,
    "一日": 3,
  }
end
