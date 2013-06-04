require 'spec_helper'

describe Empleado do
  it "is valid with nombre, password and confirm password" do
    empleado = Empleado.new(id: 1, nombre: 'Llama Ola ke ase', password: 'jajaja', password_confirmation: 'jajaja')
    expect(empleado).to be_valid
  end

  it "is invalid with duplicate name"do
    empleado = Empleado.new(nombre: 'Llama Ola ke ase', password: '123456', password_confirmation: '123456')
    expect(empleado).to have(1).errors_on(:nombre)
  end
end
