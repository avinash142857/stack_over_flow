module Revisionable
	extend ActiveSupport::Concern
	
	included do
		has_many :revisions, as: :revisionable
	end
end