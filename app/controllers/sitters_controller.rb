class SittersController < ApplicationController

  before_action :set_sitter, only: [:show]

  def index
    @sitters = Sitter.all
  end

  def show
  end

  private

  def set_sitter
    @sitter = Sitter.find(params[:id])
  end

end
