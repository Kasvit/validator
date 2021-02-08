require './initializers/startup'

author = Author.new(name: "Den", email: "den@gmail.com", phone: "123-456-7890")
book = Book.new(title: "Inferno", owner: author)

puts author.validate!
puts book.valid?

puts "Closing"
