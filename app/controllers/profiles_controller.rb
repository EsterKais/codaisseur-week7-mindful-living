class ProfilesController < ApplicationController
  # before_action :authenticate_user!

  def index
    @profiles = Profile.all
    @users = User.all
  end

  def show
    @profiles = Profile.all
    @profile = @profiles.find(params[:id])
    @users = User.all
    @user = current_user
  end
end
