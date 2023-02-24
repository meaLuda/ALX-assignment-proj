class CreateTeamStats < ActiveRecord::Migration[7.0]
  def change
    create_table :team_stats do |t|
      t.integer :rank
      t.string :name
      t.integer :games_played
      t.integer :wins
      t.integer :losses
      t.integer :ties

      t.timestamps
    end
  end
end
