class AnswersController < ApplicationController
  before_action :set_question, only: [:create, :destroy]

  def create
    @answer = @question.answers.create(answer_params.merge(user_id: current_user.id))
    redirect_to question_path(@question)
  end

	def destroy
		@answer = @question.answers.find(params[:id])
		@answer.destroy
		redirect_to questions_path
	end

  private

  def answer_params
    params.require(:answer).permit(:body, :question_id)
  end

	def set_question
		@question = Question.find(params[:question_id])
	end
end
