class Cliente < ActiveRecord::Base
  attr_accessible :ciudad, :direccion_fiscal, :mayoreo, :nombre, :rfc
end
