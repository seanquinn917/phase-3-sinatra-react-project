class AddTimestampsToAnimals < ActiveRecord::Migration[6.1]
  def change
    add_column :animals, :created_at, :datetime, null: false
    add_column :animals, :updated_at, :datetime, null: false
  end
end
