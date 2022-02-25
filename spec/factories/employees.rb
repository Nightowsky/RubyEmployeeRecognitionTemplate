FactoryBot.define do
  factory :employee do
      sequence(:email) { |n| "test-#{n}@onet.pl" }
      password { "123456" }
  end
end
