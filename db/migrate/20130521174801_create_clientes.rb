class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.string :rfc
      t.string :direccion_fiscal
      t.string :ciudad
      t.boolean :mayoreo

      t.timestamps
    end
  end
end
