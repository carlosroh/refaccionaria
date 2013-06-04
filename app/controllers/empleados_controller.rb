class EmpleadosController < ApplicationController
  before_filter :es_administrador
  skip_before_filter :es_administrador, :only => :show
  
  def index
    @empleados = Empleado.all
  end

  def show
    @empleado = Empleado.find(params[:id])
  end

  def new
    @empleado = Empleado.new
  end

  def edit
    @empleado = Empleado.find(params[:id])
  end

  def create
    @empleado = Empleado.new(params[:empleado])

    if @empleado.save
      redirect_to @empleado, notice: 'Empleado was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @empleado = Empleado.find(params[:id])

    if @empleado.update_attributes(params[:empleado])
      redirect_to @empleado, notice: 'Empleado was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @empleado = Empleado.find(params[:id])
    @empleado.destroy
    redirect_to empleados_url
  end
end
