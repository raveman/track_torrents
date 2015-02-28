require 'test_helper'

class PathMappersControllerTest < ActionController::TestCase
  setup do
    @path_mapper = path_mappers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:path_mappers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create path_mapper" do
    assert_difference('PathMapper.count') do
      post :create, path_mapper: { path: @path_mapper.path, title: @path_mapper.title }
    end

    assert_redirected_to path_mapper_path(assigns(:path_mapper))
  end

  test "should show path_mapper" do
    get :show, id: @path_mapper
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @path_mapper
    assert_response :success
  end

  test "should update path_mapper" do
    patch :update, id: @path_mapper, path_mapper: { path: @path_mapper.path, title: @path_mapper.title }
    assert_redirected_to path_mapper_path(assigns(:path_mapper))
  end

  test "should destroy path_mapper" do
    assert_difference('PathMapper.count', -1) do
      delete :destroy, id: @path_mapper
    end

    assert_redirected_to path_mappers_path
  end
end
