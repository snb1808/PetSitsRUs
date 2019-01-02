class SessionsController < ApplicationController

  def create
    @owner = Owner.find_by(username: params[:username])
    return head(:forbidden) unless @owner.authenticate(params[:password])
    session[:owner_id] = @owner.id
  end

end
