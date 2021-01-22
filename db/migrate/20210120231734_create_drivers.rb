class CreateDrivers < ActiveRecord::Migration[6.1]
  def change
    create_table :drivers do |t|
      t.string :name
      t.string :country
      t.integer :age

      t.timestamps
    end
  end
end
