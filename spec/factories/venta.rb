# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :ventum, :class => 'Venta' do
    cliente_id 1
    vendedor_id 1
    fecha "2013-05-15"
  end
end
