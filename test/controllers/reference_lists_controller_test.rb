require 'test_helper'

class ReferenceListsControllerTest < ActionController::TestCase
  setup do
    @reference_list = reference_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reference_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reference_list" do
    assert_difference('ReferenceList.count') do
      post :create, reference_list: { description: @reference_list.description, name: @reference_list.name, reference_id: @reference_list.reference_id, value: @reference_list.value }
    end

    assert_redirected_to reference_list_path(assigns(:reference_list))
  end

  test "should show reference_list" do
    get :show, id: @reference_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reference_list
    assert_response :success
  end

  test "should update reference_list" do
    patch :update, id: @reference_list, reference_list: { description: @reference_list.description, name: @reference_list.name, reference_id: @reference_list.reference_id, value: @reference_list.value }
    assert_redirected_to reference_list_path(assigns(:reference_list))
  end

  test "should destroy reference_list" do
    assert_difference('ReferenceList.count', -1) do
      delete :destroy, id: @reference_list
    end

    assert_redirected_to reference_lists_path
  end
end
