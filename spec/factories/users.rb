FactoryBot.define do
  factory :user do
    first_name            { Faker::Name::first_name                                                      }
    last_name             { Faker::Name::last_name                                                       }
    sequence(:email)      { |n| "#{first_name.parameterize}.#{last_name.parameterize}_#{n}@example.com"  }
    password              { 'password'                                                                   }
    password_confirmation { |user| user.password                                                         }
  end
end