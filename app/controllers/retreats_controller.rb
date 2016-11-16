class RetreatsController < ApplicationController
  def show
    @retreat = Retreat.find(params[:id])
  end
end
