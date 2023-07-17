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

  test "show" do
    get "/seasons/#{Season.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "name", "start_date", "end_date", "number_sessions"], data.keys
  end

  test "update" do
    season = Season.first
    patch "/seasons/#{season.id}.json", params: { name: "Updated name" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated name", data["name"]
  end

  test "destroy" do
    assert_difference "Season.count", -1 do
      delete "/seasons/#{Season.first.id}.json"
      assert_response 200
    end
  end
end
