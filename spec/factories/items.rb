# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :item do
  	sequence(:title) { |i| "Item #{i}"}
    price "9.99"
    happiness "9.99"
  end
end
