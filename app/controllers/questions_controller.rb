class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]
    @answer = ""
    if @question.capitalize.include?("I am going to work")
      @answer = "Great, then go to work already!"
    elsif @question.capitalize.include?("?")
      @answer = "Don't ask me stupid questions"
    else
      @answer = "Sort your f**king life out, and just go to work!"
    end
  end
end
