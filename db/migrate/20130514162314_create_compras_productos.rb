class CreateComprasProductos < ActiveRecord::Migration
  def change
    create_table :compras_productos do |t|
      t.integer :compra_id
      t.integer :producto_id
      t.float :precio

      t.timestamps
    end
  end
end
