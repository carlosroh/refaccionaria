class ComprasController < ApplicationController
  before_filter :es_de_compras
  before_filter :busca_compra, :only => [ :show, :edit, :update, :destroy, :cerrar_compra ]
  before_filter :es_administrador, :only => :destroy
  
  def index
    @compras = Compra.all
  end

  def show
  end

  def new
    @compra = Compra.new
  end

  def edit
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
    if @compra.update_attributes(params[:compra])
      redirect_to compra_compras_productos_path(@compra), notice: 'Compra fue actualizada exitosamente.'
    else
      render action: "edit"
    end
  end

  def destroy
    @compra.destroy
    redirect_to compras_url
  end
  
  def cerrar_compra
    @compra.cerrado = true
    if @compra.save
      redirect_to compra_compras_productos_path(@compra), notice: 'Compra fue cerrada exitosamente.'
    else
      redirect_to compra_compras_productos_path(@compra), notice: 'No se pudo cerrar la compra. Por favor, verifique los datos de la compra.'
    end
  end
  
  private
    def busca_compra
      @compra = Compra.find(params[:id])
    end
end
