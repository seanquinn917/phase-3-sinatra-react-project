class CreateZoos < ActiveRecord::Migration[6.1]
  def change
    create_table :zoos do |t|
      t.string :name
      t.string :location
      t.integer :population
    end
  end
end
