require "application_system_test_case"

class UserAllsTest < ApplicationSystemTestCase
  setup do
    @user_all = user_alls(:one)
  end

  test "visiting the index" do
    visit user_alls_url
    assert_selector "h1", text: "User alls"
  end

  test "should create user all" do
    visit user_alls_url
    click_on "New user all"

    fill_in "Address", with: @user_all.address
    fill_in "City", with: @user_all.city
    fill_in "Contact no", with: @user_all.contact_no
    fill_in "Last name", with: @user_all.last_name
    fill_in "Name", with: @user_all.name
    fill_in "State", with: @user_all.state
    click_on "Create User all"

    assert_text "User all was successfully created"
    click_on "Back"
  end

  test "should update User all" do
    visit user_all_url(@user_all)
    click_on "Edit this user all", match: :first

    fill_in "Address", with: @user_all.address
    fill_in "City", with: @user_all.city
    fill_in "Contact no", with: @user_all.contact_no
    fill_in "Last name", with: @user_all.last_name
    fill_in "Name", with: @user_all.name
    fill_in "State", with: @user_all.state
    click_on "Update User all"

    assert_text "User all was successfully updated"
    click_on "Back"
  end

  test "should destroy User all" do
    visit user_all_url(@user_all)
    click_on "Destroy this user all", match: :first

    assert_text "User all was successfully destroyed"
  end
end
