class Answer < ApplicationRecord
	include Commentable
	include Votable
	include Flagable
	include Revisionable
	
	validates :user_id, presence: true
	validates :question_id, presence: true
	validates :body, presence: true

	belongs_to :user
	belongs_to :question
end
