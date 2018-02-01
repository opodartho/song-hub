class Song::Create < Trailblazer::Operation
  class Present < Trailblazer::Operation
    step Model(Song, :new)
    step Contract::Build(constant: Song::Contract::Create)
  end


  step Nested(Present)
  step Contract::Validate(key: :song)
  step Contract::Persist()
end
