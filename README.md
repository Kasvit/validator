#### Installing
```
bundle install
```

#### Usage (How to find a language)
```
irb
> require './main.rb'
> author = Author.new(name: "Den", email: "den@gmail.com", phone: "123-456-7890")
> book = Book.new(title: "Inferno", owner: author)
> author.validate!
> book.valid?
```

#### Testing
```
bundle exec rspec
```
Or
```
rake spec
```
Or
```
guard
```
