class AddComprasToEmpleado < ActiveRecord::Migration
  def change
    add_column :empleados, :compras, :boolean, :default => false
  end
end
