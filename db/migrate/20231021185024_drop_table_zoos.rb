class DropTableZoos < ActiveRecord::Migration[6.1]
  def change
    drop_table :zoos
  end
end
