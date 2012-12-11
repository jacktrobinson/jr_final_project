require 'test_helper'

class StoreControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_select '#columns #side a'
    assert_select '#main .entry'
    assert_select 'h3'
    assert_select '.price'
  end
end
