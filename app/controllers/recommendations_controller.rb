class RecommendationsController < ApplicationController

  def create
    @recommendation = current_user.recommendations.build(recommendation_params)
    if @recommendation.save
      flash[:notice] = "Recommendation Sent!"
      redirect_to profiles_path
    else
      flash[:error] = "Ooopsie!"
      redirect_to profiles_path
    end
  end

  def destroy
    @recommendations = Recommendation.all
    @recommendation = @recommendations.find(params[:id])
    @recommendation.destroy
    flash[:notice] = "Recommendation Removed!"
    redirect_to profile_path(current_user.profile.id)
  end

  private

  def recommendation_params
    params.require(:recommendation).permit(:recommendation_message, :book_id, :recipient_id, :course_id, :retreat_id)
  end
end
