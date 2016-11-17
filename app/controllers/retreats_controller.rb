class RetreatsController < ApplicationController
  def show
    @retreat = Retreat.find(params[:id])
    @user = current_user
    @recommendations = Recommendation.all
    @recommendation = @recommendations.new
  end
end
