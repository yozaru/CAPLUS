require 'test_helper'

class ZasekisControllerTest < ActionController::TestCase
  setup do
    @zaseki = zasekis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:zasekis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create zaseki" do
    assert_difference('Zaseki.count') do
      post :create, zaseki: { address: @zaseki.address, name: @zaseki.name }
    end

    assert_redirected_to zaseki_path(assigns(:zaseki))
  end

  test "should show zaseki" do
    get :show, id: @zaseki
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @zaseki
    assert_response :success
  end

  test "should update zaseki" do
    patch :update, id: @zaseki, zaseki: { address: @zaseki.address, name: @zaseki.name }
    assert_redirected_to zaseki_path(assigns(:zaseki))
  end

  test "should destroy zaseki" do
    assert_difference('Zaseki.count', -1) do
      delete :destroy, id: @zaseki
    end

    assert_redirected_to zasekis_path
  end
end
