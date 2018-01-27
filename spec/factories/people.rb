# frozen_string_literal: true

FactoryBot.define do
  factory :person do
    email { Faker::Internet.email }
    password { Faker::Internet.password }
    confirmed_at { Time.zone.now }
  end
end
