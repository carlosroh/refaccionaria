class NoComprasController < ApplicationController
  before_filter :es_administrador

  def index
    @ventas = NoCompra.all
  end

  def show
    @venta = NoCompra.find(params[:id])
  end

  def new
    @venta = NoCompra.new
  end

  def edit
    @venta = NoCompra.find(params[:id])
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
    @venta = NoCompra.find(params[:id])

    if @venta.update_attributes(params[:venta])
      redirect_to @venta, notice: 'La venta ha sido actualizada.' 
    else
      render action: "edit"
    end
  end

  def destroy
    @venta = NoCompra.find(params[:id])
    @venta.destroy

    redirect_to no_compras_path
  end
end
