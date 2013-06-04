class AddCerradoFieldToComprasAndVentasTables < ActiveRecord::Migration
  def change
    add_column :compras, :cerrado, :boolean, :default => false
    add_column :no_compras, :cerrado, :boolean, :default => false
  end
end
