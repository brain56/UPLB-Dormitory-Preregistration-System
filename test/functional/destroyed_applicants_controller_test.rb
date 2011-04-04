require 'test_helper'

class DestroyedApplicantsControllerTest < ActionController::TestCase
  setup do
    @destroyed_applicant = destroyed_applicants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:destroyed_applicants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create destroyed_applicant" do
    assert_difference('DestroyedApplicant.count') do
      post :create, :destroyed_applicant => @destroyed_applicant.attributes
    end

    assert_redirected_to destroyed_applicant_path(assigns(:destroyed_applicant))
  end

  test "should show destroyed_applicant" do
    get :show, :id => @destroyed_applicant.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @destroyed_applicant.to_param
    assert_response :success
  end

  test "should update destroyed_applicant" do
    put :update, :id => @destroyed_applicant.to_param, :destroyed_applicant => @destroyed_applicant.attributes
    assert_redirected_to destroyed_applicant_path(assigns(:destroyed_applicant))
  end

  test "should destroy destroyed_applicant" do
    assert_difference('DestroyedApplicant.count', -1) do
      delete :destroy, :id => @destroyed_applicant.to_param
    end

    assert_redirected_to destroyed_applicants_path
  end
end
