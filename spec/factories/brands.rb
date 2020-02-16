FactoryBot.define do 
    factory :brand do
        title       { Faker::Lorem.sentence(word_count: 10) }
        bytitle     { Faker::Lorem.sentence(word_count: 10) }
        img         { Faker::Lorem.sentence(word_count: 10) }
        description { Faker::Lorem.sentence(word_count: 10) } 
    end
end