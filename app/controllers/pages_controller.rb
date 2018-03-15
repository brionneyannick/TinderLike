class PagesController < ApplicationController

  def home

  end

  def match
    @matches = Match.all
    @users = User.all
  end

  def search
    if user_signed_in?
      @user = User.where.not(id: current_user.id).sample
    else
      redirect_to new_user_session_path
    end
  end

  def show
    @user = User.find(params[:id])
  end
end
