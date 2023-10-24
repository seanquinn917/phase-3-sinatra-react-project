class DropTableHotels < ActiveRecord::Migration[6.1]
  def change
    drop_table :hotels 
  end
end
