class CreateVenta < ActiveRecord::Migration
  def change
    create_table :no_compras do |t|
      t.integer :cliente_id
      t.integer :vendedor_id

      t.timestamps
    end
  end
end
