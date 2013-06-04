class UpdateTableCompras < ActiveRecord::Migration
  def change
    add_column :compras, :proveedor_id, :integer
  end

#  def up
#  end

#  def down
#  end
end
