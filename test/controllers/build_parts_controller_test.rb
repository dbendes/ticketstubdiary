require 'test_helper'

class BuildPartsControllerTest < ActionController::TestCase
  setup do
    @build_part = build_parts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:build_parts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create build_part" do
    assert_difference('BuildPart.count') do
      post :create, build_part: { build_id: @build_part.build_id, part_id: @build_part.part_id }
    end

    assert_redirected_to build_part_path(assigns(:build_part))
  end

  test "should show build_part" do
    get :show, id: @build_part
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @build_part
    assert_response :success
  end

  test "should update build_part" do
    patch :update, id: @build_part, build_part: { build_id: @build_part.build_id, part_id: @build_part.part_id }
    assert_redirected_to build_part_path(assigns(:build_part))
  end

  test "should destroy build_part" do
    assert_difference('BuildPart.count', -1) do
      delete :destroy, id: @build_part
    end

    assert_redirected_to build_parts_path
  end
end
