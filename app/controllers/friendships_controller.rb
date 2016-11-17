class FriendshipsController < ApplicationController
  def create
    @friendship = current_user.friendships.build(:friend_id => params[:friend_id])
    if @friendship.save
      flash[:notice] = "Friend added!"
      redirect_to profile_path(current_user.profile.id)
    else
      flash[:error] = "Oopsie!"
      redirect_to profile_path(current_user.profile.id)
    end
  end

  def destroy
    @friendship = current_user.friendships.find(params[:id])
    @friendship.destroy
    flash[:notice] = "You are friends NO MORE!"
    redirect_to profile_path(current_user.profile.id)
  end
end
