# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    name 'nando sousa'
    email 'nandosousafr@gmail.com'

    factory :friend do
      name 'Bruno'
      email 'email@provider.com'
    end

  end
end
