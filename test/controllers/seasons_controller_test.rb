require "test_helper"

class SeasonsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/seasons.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Season.count, data.length
  end

  test "create" do
    assert_difference "Season.count", 1 do
      post "/seasons.json"
      assert_response 200
    end
  end
end
