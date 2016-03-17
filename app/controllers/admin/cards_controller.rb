class Admin::CardsController < ApplicationController

	def index
		@cards = Card.all
	end

	def show
		@card = Card.find(params[:id])
	end

	private
	def card_params
		params.require(:card).permit(:tags,:fulltext,:qtest)
	end
end
