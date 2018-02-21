class Flag < ApplicationRecord
  belongs_to :user
  belongs_to :flagable, polymorphic: true
end
