require_relative "./model"
require_relative "./author"

class Book < Model
  attr_accessor :title, :owner

  validate :title, presence: true
  validate :owner, type: Author

  def initialize(title: nil, owner: nil)
    @title, @owner = title, owner
  end
end
