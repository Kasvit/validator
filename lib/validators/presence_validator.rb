class PresenceValidator < Validator
  def valid?(record)
    return true unless option

    result = !record.send(self.attribute).to_s.empty? == option
    add_error(record) unless result
    result
  end

  private

  def error_message
    "#{self.attribute} must be present"
  end
end
