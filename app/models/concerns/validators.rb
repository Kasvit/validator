module Validators
  # generate new validator each time used at the model
  def validate(attr, options)
    options.each do |option|
      validator = Object.const_get("#{option[0].capitalize}Validator")
      self.validators << validator.new(attr, option[1])
    end
  end

  # initialize generators array
  def validators
    @validators ||= []
  end
end
