FactoryBot.define do
  factory :book do
    title { Faker::Book.title }
    owner { Author }
  end
end
