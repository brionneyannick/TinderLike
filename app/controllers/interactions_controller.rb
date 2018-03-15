class InteractionsController < ApplicationController
  
  def create
    Interaction.create(user_one_id: current_user.id, user_two_id: params[:id_user], like: params[:me_gusta])
    redirect_to search_path
  end
end
