require 'test_helper'

class ServerStatusesControllerTest < ActionController::TestCase
  setup do
    @server_status = server_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:server_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create server_status" do
    assert_difference('ServerStatus.count') do
      post :create, server_status: { title: @server_status.title, url: @server_status.url }
    end

    assert_redirected_to server_status_path(assigns(:server_status))
  end

  test "should show server_status" do
    get :show, id: @server_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @server_status
    assert_response :success
  end

  test "should update server_status" do
    put :update, id: @server_status, server_status: { title: @server_status.title, url: @server_status.url }
    assert_redirected_to server_status_path(assigns(:server_status))
  end

  test "should destroy server_status" do
    assert_difference('ServerStatus.count', -1) do
      delete :destroy, id: @server_status
    end

    assert_redirected_to server_statuses_path
  end
end
