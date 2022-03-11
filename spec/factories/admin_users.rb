FactoryBot.define do
  factory :admin_user do
    email { 'test.user@test.com' }
    password { '123456' }
  end
end
