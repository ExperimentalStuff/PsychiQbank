class Card < ActiveRecord::Base
	default_scope -> {order('created_at DESC')}
	paginates_per 25

	has_many :examcards
	has_many :exams, through: :examcards
end
