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

  test "show" do
    get "/league_sessions/#{LeagueSession.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "date", "gameone", "gametwo", "gamethree", "series", "notes"], data.keys
  end

  test "update" do
    league_session = LeagueSession.first
    patch "/league_sessions/#{league_session.id}.json", params: { notes: "Updated text" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated text", data["notes"]
  end

  test "destroy" do
    assert_difference "LeagueSession.count", -1 do
      delete "/league_sessions/#{LeagueSession.first.id}.json"
      assert_response 200
    end
  end
end
