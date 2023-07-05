require "test_helper"

class LeagueSessionsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/league_sessions.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal LeagueSession.count, data.length
  end

  test "create" do
    assert_difference "LeagueSession.count", 1 do
      post "/league_sessions.json"
      assert_response 200
    end
  end
end
