FactoryBot.define do
  factory :author do
    name  { Faker::Name.name }
    email { "#{Faker::Name.first_name}@gmail.com" }
    phone { Faker::PhoneNumber.cell_phone }
  end
end
