FactoryBot.define do
  factory :system_configuration do
    maintenance_mode { 0 }
    grace_period_days { Faker::Number.between(from: 1, to: 10) }
  end
end
