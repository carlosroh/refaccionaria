class Compra < ActiveRecord::Base
  has_many :compras_productos
  belongs_to :empleado
  belongs_to :proveedor
  
  attr_accessible :num_empleado, :fecha_factura, :num_factura
  attr_accessible :proveedor_id
  
  validates_presence_of :proveedor_id
  validates_presence_of :num_empleado
  validates_presence_of :fecha_factura

end
