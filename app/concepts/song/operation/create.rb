class Song::Create < Trailblazer::Operation
  class Present < Trailblazer::Operation
    step Model(Song, :new)
    step Contract::Build(constant: Song::Contract::Create)
  end
end
