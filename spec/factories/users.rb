# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  sequence(:password) { |n| "mynewpass993#{n}"}
  sequence(:email)    { |n| "nerd#{n}@nerdpower.com"}

  factory :user do
    name 'nando sousa'
    email
    password

    factory :friend do
      name 'Bruno Santos'
    end
  end
end
