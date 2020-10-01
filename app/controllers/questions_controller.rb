class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @search = coach_answer(params[:coach])
  end


  private

  def coach_answer(your_message)
    if your_message.include? "?"
    "Silly question, get dressed and go to work!"
    elsif your_message == "I am going to work"
    "Great!"
    else
    "I don't care, get dressed and go to work!"
    end
  end

end
