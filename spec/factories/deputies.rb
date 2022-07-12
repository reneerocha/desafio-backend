FactoryBot.define do
  factory :deputy do
    name { "MyString" }
    deputy_id { 1 }
    identity_number { 1 }
    state { "MyString" }
    party { "MyString" }
    legislature { nil }
  end
end
