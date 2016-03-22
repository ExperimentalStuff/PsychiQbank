class SearchController < ApplicationController
	def index

		if (params[:tag] && params[:quiz])
			@cards = Card.where("qtest LIKE ? ", "%#{params[:quiz]}%").where("tags LIKE ? ", "%#{params[:tag]}%")
		else
			@cards = Card.where("qtest LIKE ? ", "%#{params[:quiz]}%") unless !params[:quiz]
			@cards = Card.where("tags LIKE ? ", "%#{params[:tag]}%") unless !params[:tag]
		end

		if @cards
			@cards = @cards.page(params[:page])
		end
		
	end
end
