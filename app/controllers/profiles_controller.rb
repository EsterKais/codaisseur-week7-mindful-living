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

  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = current_user.build_profile(profile_params)

    if @profile.save
      redirect_to profile_path(@profile), notice: "Profile successfully created"
    else
      render :new
    end
  end



  private

  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :profile_description, :years_in_practice, :teacher)
  end
end
