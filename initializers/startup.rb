require 'pry'

Dir['./lib/errors/*.rb'].each{ |f| require f }
Dir['./lib/*.rb'].each{ |f| require f }
Dir['./lib/validators/*.rb'].each{ |f| require f }
Dir['./app/models/*.rb'].each{ |f| require f }
