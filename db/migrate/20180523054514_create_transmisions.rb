class CreateTransmisions < ActiveRecord::Migration[5.1]
  def change
    create_table :transmisions do |t|
      t.string :name

      t.timestamps
    end
  end
end
