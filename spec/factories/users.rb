FactoryGirl.define do
  factory :user do
    email { Faker::Internet.email }
    name { Faker::Name.name }
    initials { name.split.map(&:first).join }
  end
end
