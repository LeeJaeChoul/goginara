require 'test_helper'

class BuyInformationsControllerTest < ActionController::TestCase
  setup do
    @buy_information = buy_informations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:buy_informations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create buy_information" do
    assert_difference('BuyInformation.count') do
      post :create, buy_information: { address: @buy_information.address, email: @buy_information.email, phonenumber: @buy_information.phonenumber, requirement: @buy_information.requirement, user: @buy_information.user }
    end

    assert_redirected_to buy_information_path(assigns(:buy_information))
  end

  test "should show buy_information" do
    get :show, id: @buy_information
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @buy_information
    assert_response :success
  end

  test "should update buy_information" do
    patch :update, id: @buy_information, buy_information: { address: @buy_information.address, email: @buy_information.email, phonenumber: @buy_information.phonenumber, requirement: @buy_information.requirement, user: @buy_information.user }
    assert_redirected_to buy_information_path(assigns(:buy_information))
  end

  test "should destroy buy_information" do
    assert_difference('BuyInformation.count', -1) do
      delete :destroy, id: @buy_information
    end

    assert_redirected_to buy_informations_path
  end
end
