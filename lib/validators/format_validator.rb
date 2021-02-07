class FormatValidator < Validator
  def valid?(record)
    value = record.send(self.attribute)
    return false unless value

    result = value.match?(option)
    add_error(record) unless result
    result
  end

  private

  def error_message
    "Invalid #{self.attribute} format"
  end
end
