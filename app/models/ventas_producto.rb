class VentasProducto < ActiveRecord::Base
  belongs_to :productos
  belongs_to :no_compras
  
  attr_accessible :cantidad_producto, :precio
  attr_accessible :producto_id
  
  validates_presence_of :producto_id
  validates_presence_of :precio
  validates_presence_of :cantidad_producto
  
end
