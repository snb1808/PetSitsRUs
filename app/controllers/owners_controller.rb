class OwnersController < ApplicationController

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
    test_validity = Owner.new(owner_params)
    if test_validity.valid?
      @owner.update(owner_params)
      redirect_to owner_path(@owner)
    else
      flash[:errors] = @owner.errors.full_messages
      redirect_to edit_appointment_path
    end
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
    params.require(:owner).permit(:first_name, :last_name, :username, :address, :telephone_number, :email, :img_url)
  end

end
