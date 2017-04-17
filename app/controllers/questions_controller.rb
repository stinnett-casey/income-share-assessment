class QuestionsController < ApplicationController
  def index
    @questions = Question.limit(5).order("RANDOM()") #works for PostgresQL too
  end

  def new
    @question = Question.new
    4.times { @question.answers.build}
  end

  def create
    @question = Question.create(question_params)
    redirect_to root_path
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def question_params
    params.require(:question).permit(:question, answers_attributes: [:question_id, :answer, :image, :correct, :code])
  end
end
