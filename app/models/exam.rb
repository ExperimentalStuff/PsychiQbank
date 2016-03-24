class Exam < ActiveRecord::Base
	belongs_to :user, :foreign_key => "user_id"

	has_many :examcards
	has_many :cards, through: :examcards

end
