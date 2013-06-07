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
    @venta = NoCompra.new(params[:no_compra])
    @venta.vendedor_id = current_empleado.id
    
    if @venta.save
      redirect_to no_compra_ventas_productos_path(@venta), notice: 'La venta fue creada exitosamente.'
    else
      render action: "new"
    end
  end

  def update
    if @venta.update_attributes(params[:no_compra])
      redirect_to no_compra_ventas_productos_path(@venta), notice: 'La venta ha sido actualizada.' 
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
  
  def buscar_ventas
    vendedor = params[:vendedor]
    cliente = params[:cliente]
    fecha_inicio = params[:fecha_inicio]
    fecha_final = params[:fecha_final]
    
    query = "select no_compras.id, no_compras.vendedor_id, no_compras.cerrado, no_compras.cliente_id, no_compras.created_at from (no_compras inner join empleados on no_compras.vendedor_id = empleados.id) inner join clientes on clientes.id = no_compras.cliente_id "
    
    query << "where no_compras.created_at BETWEEN '#{fecha_inicio[:year]}/#{fecha_inicio[:month]}/#{fecha_inicio[:day]}' AND '#{fecha_final[:year]}/#{fecha_final[:month]}/#{fecha_final[:day]}' " if !fecha_inicio.nil? or !fecha_final.nil? or !vendedor.nil?
    
    query << "and empleados.nombre like '%#{vendedor}%' " if vendedor.to_str.length > 0 if !vendedor.nil?
    
    query << "and clientes.nombre like '%#{cliente}%' " if cliente.to_str.length > 0 if !cliente.nil?
    
    query << ";"
    
    @ventas = NoCompra.find_by_sql(query)
#    @compras = query
  end
  
  private
    def buscar_venta
      @venta = NoCompra.find(params[:id])
    end
end
