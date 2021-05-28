FactoryBot.define do
  factory :favorite do
    association :location, factory: :location
    association :user, factory: :user
  end
end