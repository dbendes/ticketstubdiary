require 'test_helper'

class BuildsControllerTest < ActionController::TestCase
  setup do
    @build = builds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:builds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create build" do
    assert_difference('Build.count') do
      post :create, build: { bom_date: @build.bom_date, corrugate_due_date: @build.corrugate_due_date, prod_start_date: @build.prod_start_date, production_end_date: @build.production_end_date, quantity: @build.quantity }
    end

    assert_redirected_to build_path(assigns(:build))
  end

  test "should show build" do
    get :show, id: @build
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @build
    assert_response :success
  end

  test "should update build" do
    patch :update, id: @build, build: { bom_date: @build.bom_date, corrugate_due_date: @build.corrugate_due_date, prod_start_date: @build.prod_start_date, production_end_date: @build.production_end_date, quantity: @build.quantity }
    assert_redirected_to build_path(assigns(:build))
  end

  test "should destroy build" do
    assert_difference('Build.count', -1) do
      delete :destroy, id: @build
    end

    assert_redirected_to builds_path
  end
end