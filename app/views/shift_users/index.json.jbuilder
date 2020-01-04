json.array! @shift_users, partial: "shift_users/shift_user", as: :shift_user
json.array!(@shift_users) do |shift_user|
  json.extract! shift_user, :user_id, :shift_id, :work_type

  json.work type shift_user.work_type
  json.url user_shift(shift_user, format: :html)
end
