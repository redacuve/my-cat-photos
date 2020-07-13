class PhotosController < ApplicationController
  before_action :set_photo, only: %i[edit show votes]
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
    @photo.votes = 0
    if @photo.save
      flash[:success] = 'Photo Created successfully'
      redirect_to root_path
    else
      render :new
    end
  end

  def votes
    votes_hash = helpers.retrieve_voting_cookie
    if !votes_hash.key?(@photo.id.to_s)
      if params[:vote] == 'like'
        @photo.votes += 1
      elsif params[:vote] == 'dislike'
        @photo.votes -= 1
      end
      respond_to do |format|
        if @photo.save
          helpers.add_to_voting_cookie(@photo.id)
          format.js
        end
      end
    else
      @denied = true
    end
  end

  private

  def set_photo
    @photo = Photo.find(params[:id])
  end

  def photo_params
    params.require(:photo).permit(:title, :description, :image, :image_cache)
  end
end
