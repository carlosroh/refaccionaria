class Proveedor < ActiveRecord::Base
  has_many :compras
  attr_accessible :nombre
end
