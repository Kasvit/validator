class Validator
  attr_accessor :attribute, :option

  def initialize(attribute, option)
    @attribute = attribute
    @option = option
  end

  def valid?(record)
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  private

  def error_message
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def add_error(record)
    record.errors << error_message unless record.errors.include?(error_message)
  end
end
