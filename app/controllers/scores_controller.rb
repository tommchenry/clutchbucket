class ScoresController < ApplicationController

  def index
    @scores = Score.order(score: :desc).limit(10)
  end

  def create
    @score = Score.new(score_params)
    if @score.save
      redirect_to scores_path
    else
      redirect_to scores_new_path
    end
  end

  private

  def score_params
    params.require(:name, :score).permit(:name, :score)
  end

end