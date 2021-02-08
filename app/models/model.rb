require_relative "./concerns/validators"
require_relative "./concerns/instance_methods"

class Model < OpenStruct
  extend Validators
  include InstanceMethods
end
