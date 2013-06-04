class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.string :descripcion
      t.integer :minimo
      t.integer :maximo
      t.float :precio_min
      t.float :precio_max

      t.timestamps
    end
  end
end
