# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do

  sequence :email do |n|
    "me#{n}@example.com"
  end

  factory :user do
    name 'vishnu'
    email 
    password 'password'
    password_confirmation 'password'
  end
end
