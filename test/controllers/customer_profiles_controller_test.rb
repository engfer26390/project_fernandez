require 'test_helper'

class CustomerProfilesControllerTest < ActionController::TestCase
  setup do
    @customer_profile = customer_profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customer_profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customer_profile" do
    assert_difference('CustomerProfile.count') do
      post :create, customer_profile: {  }
    end

    assert_redirected_to customer_profile_path(assigns(:customer_profile))
  end

  test "should show customer_profile" do
    get :show, id: @customer_profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customer_profile
    assert_response :success
  end

  test "should update customer_profile" do
    patch :update, id: @customer_profile, customer_profile: {  }
    assert_redirected_to customer_profile_path(assigns(:customer_profile))
  end

  test "should destroy customer_profile" do
    assert_difference('CustomerProfile.count', -1) do
      delete :destroy, id: @customer_profile
    end

    assert_redirected_to customer_profiles_path
  end
end
