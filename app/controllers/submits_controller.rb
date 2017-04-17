class SubmitsController < ApplicationController
  def index
    number_correct = 0
    assessment_hash = {student: {name: params[:name], email: params[:email]}, questions: []}
    params[:questions].each do |question_id, answer_id|
      question = Question.find(question_id)
      their_answer = Answer.find(answer_id)
      correct_answer = question.answers.where(correct: true).first
      correct_answer_id = correct_answer.id

      assessment_hash[:questions] << {question: question, correct_answer: correct_answer, their_answer: their_answer}

      number_correct += 1 if correct_answer_id == answer_id.to_i
    end
    assessment_hash[:number_correct] = number_correct
    AssessmentMailer.send_assessment_results(assessment_hash).deliver_now
    render 'questions/thank_you'
  end
end
