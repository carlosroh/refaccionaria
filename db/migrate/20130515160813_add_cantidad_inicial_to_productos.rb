class AddCantidadInicialToProductos < ActiveRecord::Migration
  def change
    add_column :productos, :cantidad_inicial, :integer
  end
end
