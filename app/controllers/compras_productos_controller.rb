class ComprasProductosController < ApplicationController
  before_filter :busca_compra
  before_filter :busca_compra_producto, :only => [ :show, :edit, :update, :destroy ]
  
  autocomplete :producto, :descripcion
  
  def index
    @compras_productos = @compra.compras_productos
  end

  def show
  end

  def new
    @compras_producto = @compra.compras_productos.new
  end

  def edit
  end

  def create
    @compras_producto = @compra.compras_productos.new(params[:compras_producto])

    if @compras_producto.save
      redirect_to compra_compras_productos_path(@compra), notice: 'Compras producto fue creado satisfactoriamente.' 
    else
      render action: "new"
    end
  end

  def update
    if @compras_producto.update_attributes(params[:compras_producto])
      redirect_to compra_compras_productos_path(@compra, @compras_producto), notice: 'El producto fue actualizado.'
    else
      render action: "edit"
    end
  end

  def destroy
    @compras_producto.destroy
    redirect_to compra_compras_productos_path(@compra)
  end
  
  private
    def busca_compra
      @compra = Compra.find( params[:compra_id] )
    end
    
    def busca_compra_producto
      @compras_producto = @compra.compras_productos.find( params[:id] )
    end
end
