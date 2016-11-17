class RetreatsController < ApplicationController

  def index
    @retreats = Retreat.all
  end

  def show
    @retreat = Retreat.find(params[:id])
    @retreatphotos = RetreatPhoto.all
    retreat_id = @retreat.id
    @retreatphoto = @retreatphotos.find(retreat_id)
    @user = current_user
    @recommendations = Recommendation.all
    @recommendation = @recommendations.new
  end
end
