require 'test_helper'

class AssesControllerTest < ActionController::TestCase
  setup do
    @ass = asses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:asses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ass" do
    assert_difference('Ass.count') do
      post :create, ass: @ass.attributes
    end

    assert_redirected_to ass_path(assigns(:ass))
  end

  test "should show ass" do
    get :show, id: @ass.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ass.to_param
    assert_response :success
  end

  test "should update ass" do
    put :update, id: @ass.to_param, ass: @ass.attributes
    assert_redirected_to ass_path(assigns(:ass))
  end

  test "should destroy ass" do
    assert_difference('Ass.count', -1) do
      delete :destroy, id: @ass.to_param
    end

    assert_redirected_to asses_path
  end
end
