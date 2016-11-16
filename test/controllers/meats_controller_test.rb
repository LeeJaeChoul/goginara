require 'test_helper'

class MeatsControllerTest < ActionController::TestCase
  setup do
    @meat = meats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:meats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create meat" do
    assert_difference('Meat.count') do
      post :create, meat: { category_id: @meat.category_id, life: @meat.life, maker: @meat.maker, origin: @meat.origin, price: @meat.price, title: @meat.title, user_id: @meat.user_id, weight: @meat.weight }
    end

    assert_redirected_to meat_path(assigns(:meat))
  end

  test "should show meat" do
    get :show, id: @meat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @meat
    assert_response :success
  end

  test "should update meat" do
    patch :update, id: @meat, meat: { category_id: @meat.category_id, life: @meat.life, maker: @meat.maker, origin: @meat.origin, price: @meat.price, title: @meat.title, user_id: @meat.user_id, weight: @meat.weight }
    assert_redirected_to meat_path(assigns(:meat))
  end

  test "should destroy meat" do
    assert_difference('Meat.count', -1) do
      delete :destroy, id: @meat
    end

    assert_redirected_to meats_path
  end
end
