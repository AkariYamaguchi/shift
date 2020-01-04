require "application_system_test_case"

class ShiftUsersTest < ApplicationSystemTestCase
  setup do
    @shift_user = shift_users(:one)
  end

  test "visiting the index" do
    visit shift_users_url
    assert_selector "h1", text: "Shift Users"
  end

  test "creating a Shift user" do
    visit shift_users_url
    click_on "New Shift User"

    fill_in "Shift", with: @shift_user.shift_id
    fill_in "User", with: @shift_user.user_id
    fill_in "Work type", with: @shift_user.work_type
    click_on "Create Shift user"

    assert_text "Shift user was successfully created"
    click_on "Back"
  end

  test "updating a Shift user" do
    visit shift_users_url
    click_on "Edit", match: :first

    fill_in "Shift", with: @shift_user.shift_id
    fill_in "User", with: @shift_user.user_id
    fill_in "Work type", with: @shift_user.work_type
    click_on "Update Shift user"

    assert_text "Shift user was successfully updated"
    click_on "Back"
  end

  test "destroying a Shift user" do
    visit shift_users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shift user was successfully destroyed"
  end
end
