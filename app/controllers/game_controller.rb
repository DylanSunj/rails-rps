class GameController < ApplicationController
  def homepage 
    render({ :template => "my_templates/home"})
  end 
  
  def user_played_rock
    moves = ["rock", "paper", "scissors"]
    
    @computer_moves = moves.sample

    if @computer_moves == "rock"
      @outcome = "We tied!"
    elsif @computer_moves == "scissors"
      @outcome = "We won!"
    elsif @computer_moves == "paper"
      @outcome = "We lost!"
    end
    render({ :template => "my_templates/play_rock"})
  end

  def user_played_paper 
    moves = ["rock", "paper", "scissors"]

    @computer_moves = moves.sample

    if @computer_moves == "rock"
      @outcome = "We won!"
    elsif @computer_moves == "scissors"
      @outcome = "We lost!"
    elsif @computer_moves == "paper"
      @outcome = "We tied!"
    end
    render({ :template => "my_templates/play_paper"})
  end

  def user_played_scissors
    moves = ["rock", "paper", "scissors"]

    @computer_moves = moves.sample

    if @computer_moves == "rock"
      @outcome = "We lost!"
    elsif @computer_moves == "scissors"
      @outcome = "We tied!"
    elsif @computer_moves == "paper"
      @outcome = "We won!"
    end
    render({ :template => "my_templates/play_scissors"})
  end
end
