FactoryBot.define do
    factory :employee do
        sequence(:email) { |i| "user#{i}@test.com" }
        password { "123456" }
    end
end