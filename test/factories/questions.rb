FactoryBot.define do
  factory :question do
    user nil
    title "MyString"
    body "MyText"
    accepted_answer_id 1
    views 1
    deleted_at "2018-01-29 22:08:02"
  end
end
