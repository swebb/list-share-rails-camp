FactoryGirl.define do
  factory :user do
    email { FFaker::Internet.email }
    name { FFaker::Name.name }
    initials { name.split.map(&:first).join }
  end
end
