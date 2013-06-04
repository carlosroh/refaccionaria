# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :ventas_producto do
    venta_id 1
    producto_id 1
    cantidad_producto 1
    precios 1.5
  end
end
