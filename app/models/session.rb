class Session < ApplicationRecord
  belongs_to :user

  before_create :remember
  before_create :set_validity

  def self.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

  def self.new_token
    SecureRandom.urlsafe_base64
  end

  def remember
  	self.token = Session.digest(Session.new_token)
  end

  def set_validity
  	self.validity = 1.month.from_now
  end
end
