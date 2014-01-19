# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :invitation do
    after :create do |record|
      record.sender =  FactoryGirl.create :user
      record.receiver = FactoryGirl.create :friend
    end
  end
end
