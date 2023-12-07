FactoryBot.define do
  factory :user do
    email { "a@b.c" }
    password { "Abc.1234##" }

    factory :guest do
      email { nil }
    end

    factory :admin do
      admin { true }
    end

    factory :member do
    end
  end
end
