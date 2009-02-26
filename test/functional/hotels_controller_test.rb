require 'test_helper'

class HotelsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hotels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hotel" do
    assert_difference('Hotel.count') do
      post :create, :hotel => { }
    end

    assert_redirected_to hotel_path(assigns(:hotel))
  end

  test "should show hotel" do
    get :show, :id => hotels(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => hotels(:one).id
    assert_response :success
  end

  test "should update hotel" do
    put :update, :id => hotels(:one).id, :hotel => { }
    assert_redirected_to hotel_path(assigns(:hotel))
  end

  test "should destroy hotel" do
    assert_difference('Hotel.count', -1) do
      delete :destroy, :id => hotels(:one).id
    end

    assert_redirected_to hotels_path
  end
end
