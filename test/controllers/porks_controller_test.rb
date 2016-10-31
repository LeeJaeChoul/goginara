require 'test_helper'

class PorksControllerTest < ActionController::TestCase
  setup do
    @pork = porks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:porks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pork" do
    assert_difference('Pork.count') do
      post :create, pork: { life: @pork.life, maker: @pork.maker, origin: @pork.origin, price: @pork.price, title: @pork.title, weight: @pork.weight }
    end

    assert_redirected_to pork_path(assigns(:pork))
  end

  test "should show pork" do
    get :show, id: @pork
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pork
    assert_response :success
  end

  test "should update pork" do
    patch :update, id: @pork, pork: { life: @pork.life, maker: @pork.maker, origin: @pork.origin, price: @pork.price, title: @pork.title, weight: @pork.weight }
    assert_redirected_to pork_path(assigns(:pork))
  end

  test "should destroy pork" do
    assert_difference('Pork.count', -1) do
      delete :destroy, id: @pork
    end

    assert_redirected_to porks_path
  end
end
