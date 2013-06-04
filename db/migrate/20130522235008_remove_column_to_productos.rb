class RemoveColumnToProductos < ActiveRecord::Migration
  def change
    remove_column :productos, :cantidad_inicial
  end
end
