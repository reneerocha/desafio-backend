FactoryBot.define do
  factory :expense do
    expense_type { "MyString" }
    document_number { "MyString" }
    identity_number { "MyString" }
    document_type { "MyString" }
    issue_date { "2022-07-11 22:24:27" }
    gloss_value { "9.99" }
    net_value { "9.99" }
    month { 1 }
    year { 1 }
    portion { "MyString" }
    passenger { "MyString" }
    batch { "MyString" }
    refund { "MyString" }
    restitution { "MyString" }
    document_url { "MyString" }
    deputy { build(:deputy)  }
  end
end
