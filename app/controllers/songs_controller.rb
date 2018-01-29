class SongsController < ApplicationController
  def index

  end

  def new
    run Song::Create::Present do |_result|
      render cell(Song::Cell::New, @form)
    end
  end

  def create
    #Song::Create.()
  end
end
