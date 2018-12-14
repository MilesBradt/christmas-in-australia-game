class GameController < ApplicationController

  @@counter = 0

  def index
    render :index
  end

  def start
    start = params.fetch("player_input").upcase
    if start == "START"
      @default = true
      @@counter = 0
      render :gamestart
    else
      render :index
    end
  end

  def bed_logic

    input = params.fetch("player_start_input").upcase
    if input == "GO BACK TO SLEEP" || "SLEEP" || "GO TO SLEEP"
      @default = false
      @@counter = @@counter + 1
        if @@counter == 1
          @time = "9:32AM"
        elsif @@counter == 2
          @time = "11:18AM"
        elsif @@counter == 3
          @time = "12:45PM"
        elsif @@counter == 4
          @time = "1:37PM"
        elsif @@counter == 5
          @time = "3:59PM"
        elsif @@counter == 5
          @tired = true
          @slept = false
        end
      @slept = true
      render :gamestart
    end
  end
end
