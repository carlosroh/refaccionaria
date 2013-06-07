module VentasProductosHelper
  def cerrar_interacciones(interaccion)
#    "interaccion" puede ser una compra o una venta
    interaccion.cerrado = true
    interaccion.save
  end
  
  def nombre_producto(id)
    return Producto.find(id).descripcion if !id.nil?
  end
  
end
