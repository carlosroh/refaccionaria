class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper

  # Force signout to prevent CSRF attacks
  def handle_unverified_request
    sign_out
    super
  end
  
  def es_administrador
    if cookies[:remember_token]
      @user = Empleado.find( current_empleado )
      unless @user.administrador
        flash[:error] = 'Usted no puede acceder a este recurso.'
        redirect_to '/'
      end
    else
      flash[:error] = 'Inicie sesion antes de acceder a este recurso.'
      redirect_to '/'
    end
  end
  
  def es_de_compras
    if cookies[:remember_token]
      @user = Empleado.find( current_empleado )
      unless @user.compras
        flash[:error] = 'Usted no puede acceder a este recurso.'
        redirect_to '/'
      end
    else
      flash[:error] = 'Inicie sesion antes de acceder a este recurso.'
      redirect_to '/'
    end
  end

end
