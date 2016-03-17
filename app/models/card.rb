class Card < ActiveRecord::Base
	default_scope -> {order('created_at DESC')}
	paginates_per 25
end
