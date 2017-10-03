class LettersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]
  def index
    @letters = Letter.all
  end

  def show
    @letter = Letter.find(params[:id])
  end

  def new
    @letter = Letter.new
  end

  def create
    @letter = Letter.new(params[:letter])
    @letter.save
  end

  def destroy
    @album = Album.find(params[:id]).destroy
    redirect_to root_path
    authorize @album
  end

  private

  def album_params
    params.require(:letter).permit(:name, :email, :message)
  end

end
