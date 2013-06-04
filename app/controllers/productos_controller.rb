class ProductosController < ApplicationController
  def index
    @productos = Producto.all
  end
  
  def new
    @producto = Producto.new
  end
  
  def create
    @producto = Producto.new(params[:producto])

    if @producto.save
      redirect_to @producto, notice: 'El producto fue creado satisfactoriamente.'
    else
      render action: "new"
    end
  end
  
  def edit
    @producto = Producto.find(params[:id])
  end

  def show
    @producto = Producto.find(params[:id])
  end
  
  def update
    @producto = Producto.find(params[:id])

    if @producto.update_attributes(params[:producto])
      redirect_to @producto, notice: 'El producto fue actualizado satisfactoriamente.'
    else
      render action: "edit"
    end
  end
end
