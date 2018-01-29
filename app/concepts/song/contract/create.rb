module Song::Contract
  class Create < Reform::Form
    property :title
    validates :title, presence: true
    property :minutes
    validates :minutes, presence: true
  end
end
