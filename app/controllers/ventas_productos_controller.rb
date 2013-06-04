class VentasProductosController < ApplicationController
  before_filter :busca_venta
  before_filter :busca_venta_producto, :only => [ :show, :edit, :update, :destroy ]
  
  autocomplete :producto, :descripcion
  
  def index
    @ventas_productos = @venta.ventas_productos
  end

  def show
  end

  def new
    @ventas_producto = @venta.ventas_productos.new
  end

  def edit
  end

  def create
    @ventas_producto = @venta.ventas_productos.new(params[:ventas_producto])

    if @ventas_producto.save
      redirect_to @venta, notice: 'El producto fue agregado correctamente.'
#      redirect_to no_compra_ventas_producto_path(@venta, @ventas_producto), notice: 'El producto fue agregado correctamente.'
    else
      render action: "new"
    end
  end

  def update
    if @ventas_producto.update_attributes(params[:ventas_producto])
      redirect_to @venta, notice: 'El producto fue actualizado correctamente.'
#      redirect_to no_compra_ventas_productos_path(@venta, @ventas_producto), notice: 'El producto fue agregado exitosamente.'
    else
      render action: "edit"
    end
  end

  def destroy
    @ventas_producto.destroy
    redirect_to @venta, notice: 'El producto fue borrado correctamente.'
#    redirect_to no_compra_ventas_productos_path(@venta)
  end
  
  
  private
    def busca_venta
      @venta = NoCompra.find( params[:no_compra_id] )
    end
    
    def busca_venta_producto
      @ventas_producto = @venta.ventas_productos.find( params[:id] )
    end
end
