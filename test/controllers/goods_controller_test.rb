require 'test_helper'

class GoodsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get goods_new_url
    assert_response :success
  end

end
