FactoryBot.define do
  factory :contact do
    first_name { 'Indrajit' }
    last_name { 'Naiya' }
    email { 'abc@gmail.com' }
    phone { '9036524919' }
    message { "Lorem Ipsum is simply dummy text of the printing and typesetting industry" }

    trait :missing_contact_first_name do
      first_name {}
    end

    trait :empty_string_as_contact_first_name do
      first_name { '' }
    end

    trait :invalidate_contact_first_name_with_special_characters do
      first_name { '@#$%' }
    end

    trait :missing_contact_last_name do
      last_name {}
    end

    trait :empty_string_as_contact_last_name do
      last_name { '' }
    end

    trait :invalidate_contact_last_name_with_special_characters do
      last_name { '@#$%^' }
    end

    trait :missing_contact_phone do
      phone {}
    end

    trait :missing_contact_email do
      email {}
    end

    trait :empty_string_as_contact_email do
      email { '' }
    end

    trait :missing_contact_message do
      message {}
    end

    trait :empty_string_as_contact_message do
      message { '' }
    end
  end
end