FactoryBot.define do
  factory :suggession do
    user nil
    suggestible_type "MyString"
    suggestible_id 1
    data ""
    summary "MyText"
  end
end
