FactoryBot.define do
  factory :discount do
    product { nil }
    discount_type { "MyString" }
    discount_amount { "9.99" }
  end
end
