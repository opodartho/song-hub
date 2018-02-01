module Song::Cell
  class Item < Trailblazer::Cell
    property :title
    property :minutes

    def created_at
      model.created_at.strftime("%d %B %Y")
    end

    def edit_link
      link_to "Edit", edit_song_path(model)
    end

    def destroy_link
      link_to "Destroy", song_path(model),
        method: :delete, data: { confirm: "Really?" }
    end
  end
end
