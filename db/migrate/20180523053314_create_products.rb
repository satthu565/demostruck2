class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.integer :modelID
      t.integer :fabrication
      t.integer :fuelID
      t.integer :engineID
      t.integer :transmisionID
      t.integer :colorID
      t.string :door
      t.string :co2
      t.string :feature
      t.string :other_parameter
      t.string :safety
      t.text :comfort
      t.text :moreinfo

      t.timestamps
    end
  end
end
