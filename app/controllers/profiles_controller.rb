class ProfilesController < ApplicationController
  before_action :authenticate_user!

  def index
    @profiles = Profile.all
    @users = User.all
  end

  def show
    @profile = current_user.profile
    @user = current_user
  end
end
