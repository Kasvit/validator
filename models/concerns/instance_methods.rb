module InstanceMethods
  def valid?
    result = if self.class.validators.any?
      self.class.validators.map { |v| v.valid?(self) }
    else
      []
    end
    result.all? {|r| r == true }
  end

  def validate!
    return if self.valid? && self.errors.empty?

    raise ValidationError, self.errors.join(", ")
  end

  def errors
    @errors ||= []
  end
end
