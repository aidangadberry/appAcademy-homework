class AlbumsController < ApplicationController
  def show
    @album = Album.find(params[:id])
    if @album
      render :show
    else
      redirect_to bands_url
    end
  end

  def new
    if params.has_key?(:band_id)
      @album = Album.new
      @album.band_id = params[:band_id]
      render :new
    end
  end

  def create
    @album = Album.new(album_params)

    if @album.save!
      redirect_to album_url(@album)
    else
      render :new
    end
  end

  def edit
    
  end

  def update
  end

  def destroy

  end

  private

  def album_params
    params.require(:album).permit(:band_id, :title, :year, :live)
  end
end
