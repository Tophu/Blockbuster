require 'test_helper'

class OrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get reviews" do
    get orders_reviews_url
    assert_response :success
  end

  test "should get movies" do
    get orders_movies_url
    assert_response :success
  end

end
