class RecommendationsController < ApplicationController

  def create
    @recommendation = current_user.recommendations.build(recommendation_params)
    if @recommendation.save
      flash[:notice] = "Recommendation Sent!"
      redirect_to root_path
    else
      flash[:error] = "Ooopsie!"
      redirect_to root_path
    end
  end

  def destroy
    @recommendation = current_user.recommendations.find(params[:id])
    @recommendation.destroy
    flash[:notice] = "Recommendation Removed!"
    redirect_to root_path
  end

  private

  def recommendation_params
    params.require(:recommendation).permit(:recommendation_message, :book_id, :recipient_id, :course_id, :retreat_id)
  end
end
