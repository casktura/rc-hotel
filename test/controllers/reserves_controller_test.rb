require 'test_helper'

class ReservesControllerTest < ActionController::TestCase
  setup do
    @reserf = reserves(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reserves)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reserf" do
    assert_difference('Reserf.count') do
      post :create, reserf: { booking_date: @reserf.booking_date, check_in_date: @reserf.check_in_date, check_in_time: @reserf.check_in_time, check_out_date: @reserf.check_out_date, check_out_time: @reserf.check_out_time, customer_id: @reserf.customer_id, guest_amount: @reserf.guest_amount, night_amount: @reserf.night_amount, reserve_status_id: @reserf.reserve_status_id, room_amount: @reserf.room_amount, user_id: @reserf.user_id }
    end

    assert_redirected_to reserf_path(assigns(:reserf))
  end

  test "should show reserf" do
    get :show, id: @reserf
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reserf
    assert_response :success
  end

  test "should update reserf" do
    patch :update, id: @reserf, reserf: { booking_date: @reserf.booking_date, check_in_date: @reserf.check_in_date, check_in_time: @reserf.check_in_time, check_out_date: @reserf.check_out_date, check_out_time: @reserf.check_out_time, customer_id: @reserf.customer_id, guest_amount: @reserf.guest_amount, night_amount: @reserf.night_amount, reserve_status_id: @reserf.reserve_status_id, room_amount: @reserf.room_amount, user_id: @reserf.user_id }
    assert_redirected_to reserf_path(assigns(:reserf))
  end

  test "should destroy reserf" do
    assert_difference('Reserf.count', -1) do
      delete :destroy, id: @reserf
    end

    assert_redirected_to reserves_path
  end
end
