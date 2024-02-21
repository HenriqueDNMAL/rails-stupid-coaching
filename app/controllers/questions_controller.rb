class QuestionsController < ApplicationController
  def ask
  end

  def answer
    preset_answers = ["Silly question, get dressed and go to work!", "I don't care, get dressed and go to work!", ""]

    if params[:answer].end_with?("?")
      @response = preset_answers[0]
    elsif params[:answer] == "I am going to work right now!"
      @response = preset_answers[2]
    else
      @response = preset_answers[1]
    end
  end
end
