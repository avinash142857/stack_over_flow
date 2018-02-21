FactoryBot.define do
  factory :comment do
    user nil
    commentable nil
    body "MyText"
    deleted_at "2018-01-29 22:08:12"
  end
end
