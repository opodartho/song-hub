class Song::Update < Trailblazer::Operation
  class Present < Trailblazer::Operation
    step Model(Song, :find_by)
    step Contract::Build(constant: Song::Contract::Update)
  end

  step Nested(Present)
  step Contract::Validate(key: :song)
  step Contract::Persist()
end
