class AddSeasonIdToSession < ActiveRecord::Migration[7.0]
  def change
    add_column :league_sessions, :season_id, :integer
  end
end
