FactoryBot.define do
  factory :user do
    name { "Nivaldo Beirão" }
    sequence(:email) { |n| "beirao#{n}@empire.org" }
    password { "password" }
    password_confirmation { "password" }
  end
end
