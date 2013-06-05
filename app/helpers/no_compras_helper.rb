module NoComprasHelper
  def quien_vendio? (vendedor)
    return vendedor.nombre
  end
  
  def estado(venta)
    if venta.cerrado
      return "Cerrado"
    end
    
    return "En progreso"
  end
  
  def cliente(id)
    return " "if id.nil?
    
    return Cliente.find(id).nombre
  end
end
