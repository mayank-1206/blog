require "application_system_test_case"

class NewUsersTest < ApplicationSystemTestCase
  setup do
    @new_user = new_users(:one)
  end

  test "visiting the index" do
    visit new_users_url
    assert_selector "h1", text: "New users"
  end

  test "should create new user" do
    visit new_users_url
    click_on "New new user"

    fill_in "Email", with: @new_user.email
    fill_in "Name", with: @new_user.name
    fill_in "Phone number", with: @new_user.phone_number
    fill_in "Profile photo", with: @new_user.profile_photo
    click_on "Create New user"

    assert_text "New user was successfully created"
    click_on "Back"
  end

  test "should update New user" do
    visit new_user_url(@new_user)
    click_on "Edit this new user", match: :first

    fill_in "Email", with: @new_user.email
    fill_in "Name", with: @new_user.name
    fill_in "Phone number", with: @new_user.phone_number
    fill_in "Profile photo", with: @new_user.profile_photo
    click_on "Update New user"

    assert_text "New user was successfully updated"
    click_on "Back"
  end

  test "should destroy New user" do
    visit new_user_url(@new_user)
    click_on "Destroy this new user", match: :first

    assert_text "New user was successfully destroyed"
  end
end
