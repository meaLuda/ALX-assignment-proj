class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.string :team_A
      t.string :team_B

      t.timestamps
    end
  end
end
