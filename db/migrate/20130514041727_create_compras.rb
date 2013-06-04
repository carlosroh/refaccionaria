class CreateCompras < ActiveRecord::Migration
  def change
    create_table :compras do |t|
      t.integer :num_empleado
      t.integer :num_proveedor
      t.integer :num_factura
      t.date :fecha_factura

      t.timestamps
    end
  end
end
