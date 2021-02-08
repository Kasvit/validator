FactoryBot.define do
  factory :book do
    title { Faker::Book.title }
    owner { FactoryBot.build(:author) }
  end
end
