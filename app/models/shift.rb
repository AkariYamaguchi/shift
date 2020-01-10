class Shift < ApplicationRecord
    enum work_type:{
    午前: 1,
    午後: 2,
    １日: 3,}
end
