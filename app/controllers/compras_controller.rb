class ComprasController < ApplicationController
  before_filter :es_de_compras
  before_filter :busca_compra, :only => [ :show, :edit, :update, :destroy, :cerrar_compra ]
  before_filter :es_administrador, :only => :destroy
  before_filter :lista_compras, :only => [:index]
   #, :buscar_compra]
  
  def index
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
    redirect_to :back, notice: 'Verifique el numero de factura' if @compra.num_factura == 0 or @compra.num_factura.nil?
    
    if @compra.save
      redirect_to compra_compras_productos_path(@compra), notice: 'Compra fue cerrada exitosamente.'
    else
      redirect_to compra_compras_productos_path(@compra), notice: 'No se pudo cerrar la compra. Por favor, verifique los datos de la compra.'
    end
  end
  
  def buscar_compra
    vendedor = params[:vendedor]
    proveedor = params[:proveedor]
    fecha_inicio = params[:fecha_inicio]
    fecha_final = params[:fecha_final]

    print fecha_inicio

    @compras = Compra.find_by_sql( "select compras.id, compras.num_empleado, compras.cerrado, compras.proveedor_id, compras.num_factura, compras.fecha_factura from (compras inner join empleados on compras.num_empleado=empleados.id) inner join proveedors on proveedors.id = compras.proveedor_id where compras.created_at BETWEEN '#{fecha_inicio}' AND '#{fecha_final}' order by compras.created_at;" )
    
#    redirect_to buscar_compra_compras_path
  end
  
  private
    def busca_compra
      @compra = Compra.find(params[:id])
    end
    
    def lista_compras
      @compras = Compra.all
    end
end
