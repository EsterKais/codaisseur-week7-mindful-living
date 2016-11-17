class RetreatsController < ApplicationController

  def index
    @retreats = Retreat.all
    @retreats = Retreat.search (params[:search]) unless params[:search].blank?
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

  def by_retreat_name
    @retreats = Retreat.by_retreat_name
    render action: :index
  end

  def by_latest
    @retreats = Retreat.by_latest
    render action: :index
  end
end
