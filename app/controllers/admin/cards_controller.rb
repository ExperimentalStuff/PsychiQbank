class Admin::CardsController < ApplicationController

	def index
		@cards = Card.all
	end

	private
end
