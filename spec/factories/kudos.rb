FactoryBot.define do
  factory :kudo do
    title {"Kudooo"}
    content {"Content"}
    receiver factory: :employee
    giver factory: :employee
  end
end
