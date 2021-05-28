FactoryBot.define do
  factory :location do
    association :location_type, factory: :location_type

    sequence :name do |n|
      "location number #{n}"
    end
    address { '93 Heading Rd, Murtho SA 5340' }
    description { 'Headings cliff in south australia overlooks the lazy bends of the murray river through the riverlands' }
    trait :invalid do
      name { nil }
    end
  end
end