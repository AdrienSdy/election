# frozen_string_literal: true

FactoryBot.define do
  factory :person do
    email { Faker::Internet.email }
    password { Faker::Internet.password }
    confirmed_at { Time.zone.now }

    factory :admin do
      after(:create) do |person|
        person.permissions << Permission.find_by(name: 'sudo')
      end
    end
  end
end
