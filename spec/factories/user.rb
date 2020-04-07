# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "username#{n}@localhost" }
    password { "123456" }
  end
end
