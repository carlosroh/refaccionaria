class AddPasswordDigestToEmpleados < ActiveRecord::Migration
  def change
    add_column :empleados, :password_digest, :string
  end
end
