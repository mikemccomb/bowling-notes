# json.extract! season, :id, :created_at, :updated_at
# json.url season_url(season, format: :json)

json.id season.id
json.start_date season.start_date
json.end_date season.end_date
json.number_sessions season.number_sessions