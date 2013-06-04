class AddCantidadToComprasProductos < ActiveRecord::Migration
  def change
    add_column :compras_productos, :cantidad, :integer
  end
end
