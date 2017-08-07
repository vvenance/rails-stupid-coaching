class QuestionsController < ApplicationController
  def answer
    @answer = params[:query]
    @coach_answer = coach_answer_enhanced(@answer)
  end

  def ask
  end

  private

  def coach_answer(your_message)
    return "" if your_message == "I am going to work right now!"
    if your_message.include? "?"
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
    return "" if your_message == "I AM GOING TO WORK RIGHT NOW!"
    if (your_message.include? "?") && (your_message.upcase == your_message)
      "I can feel your motivation! Silly question, get dressed and go to work!"
    elsif your_message.upcase == your_message
      "I can feel your motivation! I don't care, get dressed and go to work!"
    else
      coach_answer(your_message)
    end
  end
end
