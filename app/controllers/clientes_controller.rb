class ClientesController < ApplicationController
  before_filter :es_administrador

  def index
    @clientes = Cliente.all
  end

  def show
    @cliente = Cliente.find(params[:id])
  end

  def new
    @cliente = Cliente.new
  end

  def edit
    @cliente = Cliente.find(params[:id])
  end

  def create
    @cliente = Cliente.new(params[:cliente])

    if @cliente.save
      redirect_to @cliente, notice: 'Cliente fue creado exitosamente.'
    else
      render action: "new"
    end
  end

  def update
    @cliente = Cliente.find(params[:id])

    if @cliente.update_attributes(params[:cliente])
      redirect_to @cliente, notice: 'Cliente fue actualizado exitosamente.'
    else
      render action: "edit"
    end
  end

  def destroy
    @cliente = Cliente.find(params[:id])
    @cliente.destroy

    redirect_to clientes_url
  end
end
