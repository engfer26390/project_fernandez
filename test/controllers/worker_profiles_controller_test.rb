require 'test_helper'

class WorkerProfilesControllerTest < ActionController::TestCase
  setup do
    @worker_profile = worker_profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:worker_profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create worker_profile" do
    assert_difference('WorkerProfile.count') do
      post :create, worker_profile: {  }
    end

    assert_redirected_to worker_profile_path(assigns(:worker_profile))
  end

  test "should show worker_profile" do
    get :show, id: @worker_profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @worker_profile
    assert_response :success
  end

  test "should update worker_profile" do
    patch :update, id: @worker_profile, worker_profile: {  }
    assert_redirected_to worker_profile_path(assigns(:worker_profile))
  end

  test "should destroy worker_profile" do
    assert_difference('WorkerProfile.count', -1) do
      delete :destroy, id: @worker_profile
    end

    assert_redirected_to worker_profiles_path
  end
end
