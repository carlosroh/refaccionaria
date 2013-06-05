module ApplicationHelper
  def nombre_empleado(num_empleado)
    return Empleado.find(num_empleado).nombre
  end
end
