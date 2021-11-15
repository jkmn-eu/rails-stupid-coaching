class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:answer]
    case @question
    when 'I am going to work'
      @coach_answer = 'Great!'
    when /.?\?\z/
      @coach_answer = 'Silly question, get dressed and go to work!'
    else
      @coach_answer = "I don't care, get dressed and get to work!"
    end
  end

end
