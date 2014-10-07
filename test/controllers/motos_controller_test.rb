require 'test_helper'

class MotosControllerTest < ActionController::TestCase
  setup do
    @moto = motos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:motos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create moto" do
    assert_difference('Moto.count') do
      post :create, moto: { description: @moto.description, marque: @moto.marque }
    end

    assert_redirected_to moto_path(assigns(:moto))
  end

  test "should show moto" do
    get :show, id: @moto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @moto
    assert_response :success
  end

  test "should update moto" do
    patch :update, id: @moto, moto: { description: @moto.description, marque: @moto.marque }
    assert_redirected_to moto_path(assigns(:moto))
  end

  test "should destroy moto" do
    assert_difference('Moto.count', -1) do
      delete :destroy, id: @moto
    end

    assert_redirected_to motos_path
  end
end
