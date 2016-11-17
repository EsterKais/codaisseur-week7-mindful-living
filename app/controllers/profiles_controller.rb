class ProfilesController < ApplicationController
  before_action :authenticate_user!

  def index
    @profiles = Profile.all
    @users = User.all

    @profiles = Profile.search (params[:search]) unless params[:search].blank?
  end

  def show
    @profiles = Profile.all
    @profile = @profiles.find(params[:id])
    @users = User.all
    @user = current_user

    @profilephotos = ProfilePhoto.all
    profile_id = @profile.id
    @profilephoto = @profilephotos.find(profile_id)
  end
end
