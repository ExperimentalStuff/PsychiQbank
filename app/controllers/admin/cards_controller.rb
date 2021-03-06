class Admin::CardsController < ApplicationController

	before_action :authenticate_user!
	before_action :admin_required

	def index
		@cards = Card.page(params[:page])
	end

	def show
		@card = Card.find(params[:id])
	end

	private
	def card_params
		params.require(:card).permit(:tags,:fulltext,:qtest)
	end
end
