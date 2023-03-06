class QuestionsController < ApplicationController
  def ask
  end

  def answer
    if(params[:question])
      if @answer = params[:question].include?("I am going to work")
        @answer = "Great!"
      elsif params[:question].end_with?("?")
        @answer = "Silly question, get dressed and go to work"
      else
        @answer = "I dont care, get dressed and go back to work"
      end
    else
     @answer = "Type something"
    end
  end
end
