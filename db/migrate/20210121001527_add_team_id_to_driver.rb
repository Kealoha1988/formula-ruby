class AddTeamIdToDriver < ActiveRecord::Migration[6.1]
  def change
    add_column :drivers, :team_id, :integer
  end
end
