module InstanceMethods
  # check if all validators return true if exists
  def valid?
    result = if self.class.validators.any?
      self.class.validators.map { |v| v.valid?(self) }
    else
      []
    end
    result.all? {|r| r == true }
  end

  # check if valid? else raise an error
  def validate!
    return if self.valid?

    raise ValidationError, self.errors.join(", ")
  end

  # initialize errors array
  def errors
    @errors ||= []
  end
end
