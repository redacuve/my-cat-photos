class PhotosController < ApplicationController
  before_action :set_user, only: %i[edit show]
  def index
    @photos = Photo.all
  end

  def new
    @photo = Photo.new
  end

  def show; end

  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      flash[:success] = 'Photo Created successfully'
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def set_user
    @photo = Photo.find(params[:id])
  end

  # Esta se usa cuando se crea uno nuevo
  def photo_params
    params.require(:photo).permit(:title, :description, :votes, :image)
  end
end
