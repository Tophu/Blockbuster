require "spec_helper"
require_relative "../app/controllers/orders_controller"

context "#index" do
  it "should display index for orders" do
    actual = "order"
    expected = "#index"
    expect(actual).to equal(expected)
  end
end
