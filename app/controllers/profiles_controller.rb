class ProfilesController < ApplicationController
  before_action :authenticate_user!

  def index
    @profiles = Profile.all
    @users = User.all
  end

  def show
    @profile = current_user.profile
    @users = User.all
    @user = current_user


  end
end
