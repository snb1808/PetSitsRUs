class OwnersController < ApplicationController

  before_action :require_login
  skip_before_action :require_login, only: [:index, :new, :create]
  before_action :set_owner, only: [:show, :edit, :update, :destroy]

  def index
  end

  def new
    @owner = Owner.new
  end

  def create
    @owner = Owner.new(owner_params)
    if @owner.valid?
      @owner.save
      session[:owner_id] = @owner.id
      redirect_to owner_path(@owner)
    else
      flash[:errors] = @owner.errors.full_messages
      redirect_to new_owner_path
    end
  end

  def show
  end

  def edit
  end

  def update
      @owner.update(owner_params)
      redirect_to owner_path(@owner)
  end

  def destroy
    @owner.destroy
    session[:owner_id] = nil
    redirect_to owners_path
  end

  private

  def require_login
    return head(:forbidden) unless session.include? :owner_id
  end

  def set_owner
    @owner = Owner.find(params[:id])
  end

  def owner_params
    params.require(:owner).permit(:first_name, :last_name, :username, :address, :telephone_number, :email, :img_url, :password, :password_confirmation)
  end

end
