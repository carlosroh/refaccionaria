class Cliente < ActiveRecord::Base
  has_many :no_compras
  attr_accessible :ciudad, :direccion_fiscal, :mayoreo, :nombre, :rfc
end
