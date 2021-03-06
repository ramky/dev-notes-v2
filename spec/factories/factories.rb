FactoryBot.define do
  factory :account do
    name             { 'Ram Iyer' }
    email_address    { Faker::Internet.email }
    password { 'test123456' }
  end

  factory :topic do
    name             {  Faker::Lorem.words(number: 4).join(' ') }
    description      {  Faker::Lorem.sentences(number: 1).join(' ') }
  end

  factory :note do
    title            { Faker::Lorem.words(number: 4).join(' ') }
    text             { Faker::Lorem.sentences(number: 1).join(' ') }
  end

  factory :type do
    title            { 'Dev Notes' }
  end

  factory :authen_whitelist do
    name             { 'ram iyer' }
  end
end
