# require 'ffaker'

FactoryGirl.define do
  factory :chirp do |f|
    f.body { FFaker::Lorem.sentence }
  end
end
