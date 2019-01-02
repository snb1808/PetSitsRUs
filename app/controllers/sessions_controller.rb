class SessionsController < ApplicationController

  def new
  end

  def create
    @owner = Owner.find_by(username: params[:username])
    return head(:forbidden) unless @owner.authenticate(params[:password])
    session[:owner_id] = @owner.id
    redirect_to owner_path(@owner)
  end

  def destroy
    session.delete :owner_id
    redirect_to owners_path
  end

end
