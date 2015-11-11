require 'test_helper'

class PageLoadsControllerTest < ActionController::TestCase
  setup do
    @page_load = page_loads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:page_loads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create page_load" do
    assert_difference('PageLoad.count') do
      post :create, page_load: { datetime_stamp: @page_load.datetime_stamp }
    end

    assert_redirected_to page_load_path(assigns(:page_load))
  end

  test "should show page_load" do
    get :show, id: @page_load
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @page_load
    assert_response :success
  end

  test "should update page_load" do
    patch :update, id: @page_load, page_load: { datetime_stamp: @page_load.datetime_stamp }
    assert_redirected_to page_load_path(assigns(:page_load))
  end

  test "should destroy page_load" do
    assert_difference('PageLoad.count', -1) do
      delete :destroy, id: @page_load
    end

    assert_redirected_to page_loads_path
  end
end
