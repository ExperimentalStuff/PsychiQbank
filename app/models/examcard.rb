class Examcard < ActiveRecord::Base

	belongs_to :exam
	belongs_to :card
end
