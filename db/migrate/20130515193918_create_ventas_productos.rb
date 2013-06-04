class CreateVentasProductos < ActiveRecord::Migration
  def change
    create_table :ventas_productos do |t|
      t.integer :no_compra_id
      t.integer :producto_id
      t.integer :cantidad_producto
      t.float :precio

      t.timestamps
    end
  end
end
