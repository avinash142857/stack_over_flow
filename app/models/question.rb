class Question < ApplicationRecord
	include Commentable
	include Votable
	include Flagable
	include Revisionable

	validates :user_id, presence: true
	validates :title, presence: true
	validates :body, presence: true

	belongs_to :user

	has_and_belongs_to_many :tags
	has_many :answers
	has_many :visits
	has_and_belongs_to_many :visited_users, class: 'User', foreign_key: 'user_id' , join_table: "visits"
end
