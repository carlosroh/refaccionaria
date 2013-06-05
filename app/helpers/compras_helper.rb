module ComprasHelper
  def estado(compra)
    if compra.cerrado
      return "Cerrado"
    end
    
    return "Abierto"
  end
  
  
end
