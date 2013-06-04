class CreateEmpleado < ActiveRecord::Migration
  def change
    create_table :empleados do |t|
      t.boolean :administrador
      t.boolean :activo
      t.string :nombre
      t.string :password
      t.string :password_confirmation
      t.timestamps
    end
  end
end
