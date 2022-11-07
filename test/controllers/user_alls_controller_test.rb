require "test_helper"

class UserAllsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_all = user_alls(:one)
  end

  test "should get index" do
    get user_alls_url
    assert_response :success
  end

  test "should get new" do
    get new_user_all_url
    assert_response :success
  end

  test "should create user_all" do
    assert_difference("UserAll.count") do
      post user_alls_url, params: { user_all: { address: @user_all.address, city: @user_all.city, contact_no: @user_all.contact_no, last_name: @user_all.last_name, name: @user_all.name, state: @user_all.state } }
    end

    assert_redirected_to user_all_url(UserAll.last)
  end

  test "should show user_all" do
    get user_all_url(@user_all)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_all_url(@user_all)
    assert_response :success
  end

  test "should update user_all" do
    patch user_all_url(@user_all), params: { user_all: { address: @user_all.address, city: @user_all.city, contact_no: @user_all.contact_no, last_name: @user_all.last_name, name: @user_all.name, state: @user_all.state } }
    assert_redirected_to user_all_url(@user_all)
  end

  test "should destroy user_all" do
    assert_difference("UserAll.count", -1) do
      delete user_all_url(@user_all)
    end

    assert_redirected_to user_alls_url
  end
end
