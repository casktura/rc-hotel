require 'test_helper'

class ReserveStatusesControllerTest < ActionController::TestCase
  setup do
    @reserve_status = reserve_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reserve_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reserve_status" do
    assert_difference('ReserveStatus.count') do
      post :create, reserve_status: { name: @reserve_status.name }
    end

    assert_redirected_to reserve_status_path(assigns(:reserve_status))
  end

  test "should show reserve_status" do
    get :show, id: @reserve_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reserve_status
    assert_response :success
  end

  test "should update reserve_status" do
    patch :update, id: @reserve_status, reserve_status: { name: @reserve_status.name }
    assert_redirected_to reserve_status_path(assigns(:reserve_status))
  end

  test "should destroy reserve_status" do
    assert_difference('ReserveStatus.count', -1) do
      delete :destroy, id: @reserve_status
    end

    assert_redirected_to reserve_statuses_path
  end
end
