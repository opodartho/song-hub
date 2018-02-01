module Song::Cell
  class Index < Trailblazer::Cell
    def total
      model.size.zero? ? 0 : model.size
    end
  end
end
