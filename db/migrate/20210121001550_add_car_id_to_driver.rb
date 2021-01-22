class AddCarIdToDriver < ActiveRecord::Migration[6.1]
  def change
    add_column :drivers, :car_id, :integer
  end
end
