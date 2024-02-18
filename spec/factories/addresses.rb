FactoryBot.define do
  factory :address do
    street { Faker::Address.street_name }
    number { Faker::Address.building_number }
    neighborhood { "#{Faker::Address.city_prefix} #{Faker::Address.city_suffix}" }
    city { Faker::Address.city }
    state { Faker::Address.state_abbr }
    zip_code { Faker::Address.zip_code }

  end
  factory :client_address, parent: :address do
    association :addressable, factory: :client
  end

  factory :company_address, parent: :address do
    association :addressable, factory: :company
  end
end