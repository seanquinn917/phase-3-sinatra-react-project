class AddTimestampsToZoo < ActiveRecord::Migration[6.1]
  def change
    add_column :zoos, :created_at, :datetime, null: false
    add_column :zoos, :updated_at, :datetime, null: false
  end
end
