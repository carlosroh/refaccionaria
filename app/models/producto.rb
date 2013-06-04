class Producto < ActiveRecord::Base
  has_many :compras_productos
  has_many :ventas_productos
  
  attr_accessible :descripcion, :maximo, :minimo, :precio_max, :precio_min, :cantidad_inicial
  before_save :validar_rangos

  validates_presence_of :descripcion 
  validates_presence_of :maximo
  validates_presence_of :minimo
  validates_presence_of :precio_max
  validates_presence_of :precio_min

  def validar_rangos
    
  end
end
