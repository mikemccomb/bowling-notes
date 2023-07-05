# json.extract! league_session, :id, :created_at, :updated_at
# json.url league_session_url(league_session, format: :json)

json.id league_session.id
json.date league_session.date
json.gameone league_session.gameone
json.gametwo league_session.gametwo
json.gamethree league_session.gamethree
json.notes league_session.notes
