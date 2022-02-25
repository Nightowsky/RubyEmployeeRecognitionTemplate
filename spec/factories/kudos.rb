FactoryBot.define do
  factory :kudo do
    title {"Kudooo"}
    content {"Content"}
    receiver { create(:employee) }
    giver { create(:employee) }
  end
end
