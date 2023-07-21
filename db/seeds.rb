# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Season.create(name: "League 1", start_date: "2023-01-02", end_date: "2023-12-31", number_sessions: 12)
Season.create(name: "League 2", start_date: "2023-01-02", end_date: "2023-12-31", number_sessions: 12)
Season.create(name: "League 3", start_date: "2023-01-02", end_date: "2023-12-31", number_sessions: 12)

LeagueSession.create(date: Date.parse("2023-07-21"), gameone: 154, gametwo: 219, gamethree: 189, notes: "Nice second game", season_id: 1)
LeagueSession.create(date: Date.parse("2023-07-23"), gameone: 154, gametwo: 219, gamethree: 189, notes: "Nice second game", season_id: 2)
LeagueSession.create(date: Date.parse("2023-07-24"), gameone: 154, gametwo: 219, gamethree: 189, notes: "Nice second game", season_id: 3)
