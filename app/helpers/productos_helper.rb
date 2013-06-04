module ProductosHelper
  def cantidad_producto(producto)
    @cp = ComprasProducto.all
    
    # @total = producto.cantidad_inicial
    @total = 0
    @cp.each do |p|
      if p.producto_id == producto.id
        @total = @total + p.cantidad
      end
    end
    
    @vp = VentasProducto.all
    @vp.each do |p|
      if p.producto_id == producto.id
        @total = @total - p.cantidad_producto
      end
    end
    
    return @total
  end
end
