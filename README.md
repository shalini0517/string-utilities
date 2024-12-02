
# StringUtils

**StringUtils** is a Ruby gem that provides additional string manipulation utilities to make working with strings easier and more convenient. It includes methods for converting strings between different cases, reversing words, and more.

Author
Developed by [Shalini Patel](https://github.com/shalini0517).


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'string_utils'
```

And then execute:

```bash
bundle install
```

Or install it yourself as:

```bash
gem install string_utils
```

---

## Usage

Require the gem in your Ruby application:

```ruby
require 'string_utils'
```

### Available Methods

#### 1. `to_camel_case`
Converts a snake_case or kebab-case string into camelCase.

```ruby
StringUtils.to_camel_case("hello_world") # => "helloWorld"
```

#### 2. `to_kebab_case`
Converts a snake_case string into kebab-case.

```ruby
StringUtils.to_kebab_case("hello_world") # => "hello-world"
```

#### 3. `to_snake_case`
Converts a string to snake_case, regardless of its original format.

```ruby
StringUtils.to_snake_case("HelloWorld")  # => "hello_world"
StringUtils.to_snake_case("hello-world") # => "hello_world"
```

#### 4. `title_case`
Capitalizes the first letter of each word while keeping certain words lowercase (like "and", "or", etc.).

```ruby
StringUtils.title_case("the quick brown fox jumps over") # => "The Quick Brown Fox Jumps Over"
```

#### 5. `reverse_words`
Reverses the order of words in a sentence without reversing the characters in each word.

```ruby
StringUtils.reverse_words("The quick brown fox") # => "fox brown quick The"
```

---

## Example Usage

```ruby
require 'string_utils'

puts StringUtils.to_camel_case("my_example_string")  # => "myExampleString"
puts StringUtils.to_kebab_case("my_example_string")  # => "my-example-string"
puts StringUtils.to_snake_case("MyExampleString")    # => "my_example_string"
puts StringUtils.title_case("a tale of two cities")  # => "A Tale of Two Cities"
puts StringUtils.reverse_words("Hello World!")       # => "World! Hello"
```

---

## Development

After checking out the repository, run `bin/setup` to install dependencies. Then, run the tests with:

```bash
bundle exec rspec
```

To install the gem locally:

```bash
gem build string_utils.gemspec
gem install ./string_utils-0.1.0.gem
```

---

## Contributing

Bug reports and pull requests are welcome on GitHub at [https://github.com/shalini0517/string-utils](https://github.com/shalini0517/string-utils).

---

## License

This gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the CurrencyConverter project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/shalini0517/string-utils/blob/master/CODE_OF_CONDUCT.md).
