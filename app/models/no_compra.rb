class NoCompra < ActiveRecord::Base
  has_many :ventas_productos
  belongs_to :cliente
  attr_accessible :vendedor_id, :cliente_id
  
  validates_presence_of :cliente_id
  validates_presence_of :vendedor_id
  
end
