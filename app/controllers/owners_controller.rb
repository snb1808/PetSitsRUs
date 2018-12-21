class OwnersController < ApplicationController

  before_action :set_owner, only: [:show, :edit, :update, :destroy]

  def index
  end

  def new
    @owner = Owner.new
  end

  def create
    @owner = Owner.new
    if @owner.valid?
      @owner.save
      redirect_to owner_path(@owner)
    else
      render new_owner_path
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
    redirect_to owners_path
  end

  private

  def set_owner
    @owner = Owner.find(params[:id])
  end

  def owner_params
    params.require(:owner).permit(:first_name, :last_name, :username, :address, :telephone_number, :email)
  end

end
