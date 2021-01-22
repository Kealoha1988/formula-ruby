class AddOwnerIdToTeam < ActiveRecord::Migration[6.1]
  def change
    add_column :teams, :owner_id, :integer
  end
end
