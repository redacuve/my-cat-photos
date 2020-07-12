class PhotosController < ApplicationController
  before_action :set_user, only: %i[edit show]
  def index
    @photos = Photo.all
    @photos = if params[:sort] == 'likes'
                Photo.most_liked
              else
                Photo.recents
              end
  end

  def new
    @photo = Photo.new
  end

  def show; end

  def create
    @photo = Photo.new(photo_params)
    @photo.votes = 0;
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

  def photo_params
    params.require(:photo).permit(:title, :description, :image, :image_cache)
  end
end
