class CreateLeagueSessions < ActiveRecord::Migration[7.0]
  def change
    create_table :league_sessions do |t|
      t.date :date
      t.integer :gameone
      t.integer :gametwo
      t.integer :gamethree
      t.integer :series
      t.text :notes

      t.timestamps
    end
  end
end
