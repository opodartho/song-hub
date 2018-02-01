class Song::Index < Trailblazer::Operation
  step :model!

  def model!(options, *)
    options["model"] = Song.all.reverse_order
  end
end
