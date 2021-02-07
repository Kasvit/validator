class TypeValidator < Validator
  def valid?(record)
    result = record.send(self.attribute).class == option
    add_error(record) unless result
    result
  end

  private

  def error_message
    "Invalid #{self.attribute}, must be #{option}"
  end
end
