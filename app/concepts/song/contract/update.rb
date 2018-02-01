module Song::Contract
  class Update < Create
    property :title, readonly: true
  end
end
