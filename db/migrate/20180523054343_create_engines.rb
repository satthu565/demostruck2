class CreateEngines < ActiveRecord::Migration[5.1]
  def change
    create_table :engines do |t|
      t.string :name

      t.timestamps
    end
  end
end
