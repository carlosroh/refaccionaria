class Empleado < ActiveRecord::Base
  attr_accessible :administrador, :nombre, :activo, :compras, :password, :password_confirmation
  has_secure_password
  
  before_save :create_remember_token
  
  validates :nombre, presence: true, length: { maximum: 50 }, uniqueness: true

  validates :password, presence: true, length: { minimum: 6 }
  validates_presence_of :password_confirmation
  
  private
    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
  
end
