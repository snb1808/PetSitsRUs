class PetsController < ApplicationController

  before_action :set_pet, only: [:show, :edit, :update, :destroy]

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.create(pet_params)
      redirect_to pet_path(@pet)
  end

  def show
  end

  def edit
  end

  def update
    test_validity = Pet.new(pet_params)
    if test_validity.valid?
      @pet.update(pet_params)
      redirect_to pet_path(@pet)
    else
      render edit_pet_path
    end
  end

  def destroy
    @owner = @pet.owner
    @pet.destroy
    redirect_to owner_path(@owner)
  end

  private

  def set_pet
    @pet = Pet.find(params[:id])
  end

  def pet_params
    params.require(:pet).permit(:owner_id, :name, :age, :species, :img_url, :gender)
  end

end
