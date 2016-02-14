class GameController < ApplicationController

  def index
    @score = Score.new
  end

end