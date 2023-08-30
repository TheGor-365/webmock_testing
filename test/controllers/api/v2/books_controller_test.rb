require "test_helper"

class Api::V2::BooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book = books(:one)
  end

  test "should get index" do
    get books_url, format: :json
    assert_response :success
  end
end
