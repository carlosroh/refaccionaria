module SessionsHelper
  def sign_in(current_empleado)
    cookies[:remember_token] = { value:  current_empleado.remember_token}
    self.current_empleado = current_empleado
  end
  
  def signed_in?
#    !@current_empleado.nil?
    if cookies[:remember_token]
      return true
    end
    
    redirect_to '/'
  end
  
  def current_empleado=(empleado)
    @current_empleado = empleado
  end
  
  def current_empleado
    @current_empleado ||= Empleado.find_by_remember_token(cookies[:remember_token])
    return @current_empleado
  end
  
  def sign_out
    self.current_empleado = nil
    cookies.delete :remember_token
  end
end
