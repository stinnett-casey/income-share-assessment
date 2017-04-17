class AssessmentMailer < ApplicationMailer

  def send_assessment_results(assessment_hash)
    @assessment_hash = assessment_hash
    student = assessment_hash[:student]
    mail(to: 'casey.stinnett@nycda.com', from: 'testing@nycda.com', subject: "#{student[:name]} has completed the assessment")
  end

end
