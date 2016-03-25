class ExamsController < ApplicationController
	before_action :authenticate_user!

	def index
		@exams = current_user.exams

		# reset exam order when enter exams#index
		if cookies[:rand_seed].present?
			cookies[:rand_seed] = {value: rand, expires: Time.now + 900}
		end
	end

	def create
		@exam = current_user.exams.build(exam_params)

		if @exam.save
			redirect_to exams_path
		end
	end

	def show
		# set new random order of cards if not present yet
		if !cookies[:rand_seed].present?
			cookies[:rand_seed] = {value: rand, expires: Time.now + 900}
		end

		seed_val = Card.connection.quote(cookies[:rand_seed])
		Card.connection.execute("select setseed(#{seed_val})")

		@exam = current_user.exams.find(params[:id])
		@cards = @exam.cards.reorder("RANDOM()").page(params[:page]).per(1)
		@card = @cards[0]
	end

	def destroy
		@exam = current_user.exams.find(params[:id]).destroy

		redirect_to exams_path
	end

	private
		def exam_params
			params.require(:exam).permit(:title)
		end
end
