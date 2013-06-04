class NoCompra < ActiveRecord::Base
  has_many :ventas_productos
  attr_accessible :vendedor_id, :cliente_id
end
