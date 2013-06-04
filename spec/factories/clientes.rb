# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :cliente do
    nombre "MyString"
    rfc "MyString"
    direccion_fiscal "MyString"
    ciudad "MyString"
    mayoreo false
  end
end
