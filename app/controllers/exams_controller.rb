class ExamsController < ApplicationController
	before_action :authenticate_user!

	def index
		@exams = current_user.exams
	end

	def create
		@exam = current_user.exams.build(exam_params)

		if @exam.save
			redirect_to exams_path
		end
	end

	def update
	end

	def destroy
	end

	private
		def exam_params
			params.require(:exam).permit(:title)
		end
end
