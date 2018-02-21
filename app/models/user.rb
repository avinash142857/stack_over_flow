class User < ApplicationRecord
	validates :name, presence: true, length: { maximum: 50 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  	validates :email, 	presence: true, 
  						length: { maximum: 255 },
                    	format: { with: VALID_EMAIL_REGEX },
                    	uniqueness: true

 	has_secure_password

	has_many :revisions, as: :revisionable
	has_many :questions
	has_many :answers
	has_many :comments
	has_many :votes
	has_many :sessions
	has_many :suggessions
	has_many :flags
	has_and_belongs_to_many :badges
	has_and_belongs_to_many :visited_questions, class: 'Question', foreign_key: 'question_id' , join_table: "visits"



	def set_salt
		self.salt = BCrypt::Engine.generate_salt
	end

	def set_encrypted_password(password)
		set_salt
		self.encrypted_password = BCrypt::Engine.hash_secret(password, self.salt)
	end

	def authenticated?(password)
		BCrypt::Engine.hash_secret(password, self.salt) == self.encrypted_password
	end

end
