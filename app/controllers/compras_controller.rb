class ComprasController < ApplicationController
#  include SessionsHelper
  before_filter :es_de_compras
  
  def index
    @compras = Compra.all
  end

  def show
    @compra = Compra.find(params[:id])
  end

  def new
    @compra = Compra.new
  end

  def edit
    @compra = Compra.find(params[:id])
  end

  def create
    @compra = Compra.new(params[:compra])
    @compra.num_empleado = current_empleado.id
    if @compra.save
      redirect_to compra_compras_productos_path(@compra), notice: 'Compra fue creado exitosamente.'
    else
      render action: "new"
    end
  end

  def update
    @compra = Compra.find(params[:id])

    if @compra.update_attributes(params[:compra])
      redirect_to compra_compras_productos_path(@compra), notice: 'Compra fue actualizada exitosamente.'
    else
      render action: "edit"
    end
  end

  def destroy
    @compra = Compra.find(params[:id])
    @compra.destroy

    redirect_to compras_url
  end
end
