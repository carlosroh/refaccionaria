class ProveedorsController < ApplicationController
  before_filter :es_administrador
  
  def index
    @proveedors = Proveedor.all
  end

  def show
    @proveedor = Proveedor.find(params[:id])
  end

  def new
    @proveedor = Proveedor.new
  end

  def edit
    @proveedor = Proveedor.find(params[:id])
  end

  def create
    @proveedor = Proveedor.new(params[:proveedor])

    if @proveedor.save
      redirect_to @proveedor, notice: 'Proveedor fue creado satisfactoriamente.'
    else
      render action: "new"
    end
  end

  def update
    @proveedor = Proveedor.find(params[:id])

    if @proveedor.update_attributes(params[:proveedor])
      redirect_to @proveedor, notice: 'Proveedor fue actualizado satisfactoriamente.'
    else
      render action: "edit"
    end
  end

  def destroy
    @proveedor = Proveedor.find(params[:id])
    @proveedor.destroy

    redirect_to proveedors_url
  end
end
