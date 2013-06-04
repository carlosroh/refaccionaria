class NoComprasController < ApplicationController
  before_filter :es_administrador, :only => [:index, :delete]
  before_filter :buscar_venta, :only => [:show, :edit, :update, :destroy, :terminar_venta]

  def index
    @ventas = NoCompra.all
  end

  def show
  end

  def new
    @venta = NoCompra.new
  end

  def edit
  end

  def create
    @venta = NoCompra.new(params[:venta])
    @venta.vendedor_id = current_empleado.id
    
    if @venta.save
      redirect_to @venta, notice: 'La venta fue creada exitosamente.'
    else
      render action: "new"
    end
  end

  def update
    if @venta.update_attributes(params[:venta])
      redirect_to @venta, notice: 'La venta ha sido actualizada.' 
    else
      render action: "edit"
    end
  end

  def destroy
    @venta.destroy
    redirect_to no_compras_path
  end
  
  def terminar_venta
    @venta.cerrado = true
    if @venta.save
      redirect_to no_compra_ventas_productos_path(@venta), notice: 'Venta fue cerrada exitosamente.'
    end
  end
  
  private
    def buscar_venta
      @venta = NoCompra.find(params[:id])
    end
end
