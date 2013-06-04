# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :compra do
    id 1
    num_empleado 1
    num_proveedor 1
    num_factura 1
    fecha "2013-05-13"
  end
end
