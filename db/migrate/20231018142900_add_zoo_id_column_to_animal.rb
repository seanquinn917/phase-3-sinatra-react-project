class AddZooIdColumnToAnimal < ActiveRecord::Migration[6.1]
  def change
    add_column :animals, :zoo_id, :integer 
  end
end
