require 'test_helper'

class AlertEmailsControllerTest < ActionController::TestCase
  setup do
    @alert_email = alert_emails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alert_emails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create alert_email" do
    assert_difference('AlertEmail.count') do
      post :create, :alert_email => @alert_email.attributes
    end

    assert_redirected_to alert_email_path(assigns(:alert_email))
  end

  test "should show alert_email" do
    get :show, :id => @alert_email.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @alert_email.to_param
    assert_response :success
  end

  test "should update alert_email" do
    put :update, :id => @alert_email.to_param, :alert_email => @alert_email.attributes
    assert_redirected_to alert_email_path(assigns(:alert_email))
  end

  test "should destroy alert_email" do
    assert_difference('AlertEmail.count', -1) do
      delete :destroy, :id => @alert_email.to_param
    end

    assert_redirected_to alert_emails_path
  end
end
