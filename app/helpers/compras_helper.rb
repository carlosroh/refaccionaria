module ComprasHelper
  def estado(compra)
    return "Cerrado" if compra.cerrado
    
    return "Abierto"
  end
  
  def nombre_proveedor(id)
    return " " if id.nil?
    
    return Proveedor.find(id).nombre
  end
end
