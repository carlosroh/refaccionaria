# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :empleado do
    nombre "MyString"
    contrasena "MyString"
    administrador false
  end
end
