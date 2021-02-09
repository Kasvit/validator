require "./lib/concerns/validators"
require "./lib/concerns/instance_methods"

class Model < OpenStruct
  extend Validators
  include InstanceMethods
end
