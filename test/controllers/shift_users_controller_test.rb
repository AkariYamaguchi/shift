require 'test_helper'

class ShiftUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shift_user = shift_users(:one)
  end

  test "should get index" do
    get shift_users_url
    assert_response :success
  end

  test "should get new" do
    get new_shift_user_url
    assert_response :success
  end

  test "should create shift_user" do
    assert_difference('ShiftUser.count') do
      post shift_users_url, params: { shift_user: { shift_id: @shift_user.shift_id, user_id: @shift_user.user_id, work_type: @shift_user.work_type } }
    end

    assert_redirected_to shift_user_url(ShiftUser.last)
  end

  test "should show shift_user" do
    get shift_user_url(@shift_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_shift_user_url(@shift_user)
    assert_response :success
  end

  test "should update shift_user" do
    patch shift_user_url(@shift_user), params: { shift_user: { shift_id: @shift_user.shift_id, user_id: @shift_user.user_id, work_type: @shift_user.work_type } }
    assert_redirected_to shift_user_url(@shift_user)
  end

  test "should destroy shift_user" do
    assert_difference('ShiftUser.count', -1) do
      delete shift_user_url(@shift_user)
    end

    assert_redirected_to shift_users_url
  end
end
