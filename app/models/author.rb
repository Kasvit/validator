require_relative "./model"

class Author < Model
  attr_accessor :name, :email, :phone

  validate :name,  presence: true
  validate :email, presence: true, format: /@gmail.com/
  validate :phone, format: /^(\+\d{1,2}\s?)?1?\-?\.?\s?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}$/

  def initialize(name: nil, email: nil, phone: nil)
    @name, @email, @phone = name, email, phone
  end
end
