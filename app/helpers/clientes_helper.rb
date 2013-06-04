module ClientesHelper

  def mayorista? (cliente)
    if cliente.mayoreo
      return 'Si'
    end
    
    return 'No'
  end
end
