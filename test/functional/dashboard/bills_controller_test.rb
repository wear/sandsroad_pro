require 'test_helper'

class Dashboard::BillsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dashboard_bills)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bill" do
    assert_difference('Dashboard::Bill.count') do
      post :create, :bill => { }
    end

    assert_redirected_to bill_path(assigns(:bill))
  end

  test "should show bill" do
    get :show, :id => dashboard_bills(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => dashboard_bills(:one).to_param
    assert_response :success
  end

  test "should update bill" do
    put :update, :id => dashboard_bills(:one).to_param, :bill => { }
    assert_redirected_to bill_path(assigns(:bill))
  end

  test "should destroy bill" do
    assert_difference('Dashboard::Bill.count', -1) do
      delete :destroy, :id => dashboard_bills(:one).to_param
    end

    assert_redirected_to dashboard_bills_path
  end
end
