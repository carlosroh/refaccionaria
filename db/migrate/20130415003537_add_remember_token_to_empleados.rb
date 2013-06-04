class AddRememberTokenToEmpleados < ActiveRecord::Migration
  def change
    add_column :empleados, :remember_token, :string
    add_index  :empleados, :remember_token
  end
end
