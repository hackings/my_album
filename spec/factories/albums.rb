# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :album do
    association :user
    name 'My album'
  end
end
