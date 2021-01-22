class AddTeamIdToCar < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :team_id, :integer
  end
end
