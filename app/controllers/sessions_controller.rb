class SessionsController < ApplicationController
  def new
  end

  def create
    @current_empleado = Empleado.find_by_id(params[:session][:id])
    if @current_empleado && @current_empleado.authenticate(params[:session][:password])
      sign_in @current_empleado
      redirect_to @current_empleado
    else
      redirect_to '/'
    end
#    redirect_to '/'
  end

  def destroy
    sign_out
    redirect_to root_path
  end
end
