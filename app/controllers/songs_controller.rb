class SongsController < ApplicationController

  def new
    @song = Song.new
  end

  def create
<<<<<<< HEAD
=======
    binding.pry
>>>>>>> 182475e2227f6f7dfa9d7b45551a6fccf62135d5
    @song = Song.create(song_params)
    if @song.save
      redirect_to song_path(@song)
    else
      render :new
    end
  end

  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def edit
    @song = Song.find(params[:id])
  end

<<<<<<< HEAD
  def update
    @song = Song.find(params[:id])
    song_replacement = Song.create(song_params)
    if song_replacement.valid?
      @song.update(song_params)
      redirect_to song_path(@song)
    else
      render :edit
    end
  end

  def destroy
    Song.find(params[:id]).destroy
    redirect_to songs_path
  end
=======
>>>>>>> 182475e2227f6f7dfa9d7b45551a6fccf62135d5

  private

  def song_params
<<<<<<< HEAD
    params.require(:song).permit(:title, :artist_name, :release_year, :released, :genre)
=======
    params.permit(:title, :artist_name, :release_year, :released, :genre)
>>>>>>> 182475e2227f6f7dfa9d7b45551a6fccf62135d5
  end
end
