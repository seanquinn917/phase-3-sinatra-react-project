class DropTableMusicals < ActiveRecord::Migration[6.1]
  def change
    drop_table :animals
  end
end
