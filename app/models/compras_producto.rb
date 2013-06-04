class ComprasProducto < ActiveRecord::Base
  belongs_to :producto
  belongs_to :compras
  
  attr_accessible :producto_id, :precio, :cantidad

  validates_presence_of :producto_id
  validates_presence_of :precio
  validates_presence_of :cantidad

  
end
