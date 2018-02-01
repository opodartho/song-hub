class SongsController < ApplicationController
  def index
    run Song::Index do |result|
      render cell(Song::Cell::Index, result["model"])
    end
  end

  def new
    run Song::Create::Present do
      render cell(Song::Cell::New, @form)
    end
  end

  def create
    run Song::Create do
      return redirect_to songs_path
    end

    render cell(Song::Cell::New, @form)
  end

  def edit
    run Song::Update::Present do
      render cell(Song::Cell::New, @form)
    end
  end

  def update
    run Song::Update do
      return redirect_to songs_path
    end

    render cell(Song::Cell::New, @form)
  end

  def destroy
    song = Song.find params[:id]
    song.destroy
    redirect_to songs_path
  end
end

# https://github.com/opodartho/songs_hub
