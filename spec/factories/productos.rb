# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :producto, :class => 'Productos' do
    descripcion "MyString"
    minimo ""
    maximo ""
    precio_min 1.5
    precio_max 1.5
  end
end
