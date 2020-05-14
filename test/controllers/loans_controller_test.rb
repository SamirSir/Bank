require 'test_helper'

class LoansControllerTest < ActionDispatch::IntegrationTest
  test "should get credit" do
    get loans_credit_url
    assert_response :success
  end

  test "should get user:references" do
    get loans_user:references_url
    assert_response :success
  end

end
