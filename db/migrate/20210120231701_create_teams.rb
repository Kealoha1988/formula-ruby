class CreateTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :country
      t.integer :championships
      t.integer :year_founded

      t.timestamps
    end
  end
end
