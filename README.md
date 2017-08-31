# LabelColorize

Generate color based on string. This helpful to generate colored labels.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'label_colorize'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install label_colorize

## Usage

Require library
```rb
require 'label_colorize'
```

And get RGB HEX color:
```rb
LabelColorize.generate_rgb('Test string') # 0ef373
```

Or hue component:
```rb
LabelColorize.generate_hue('Test string') # 315
```

## TODO

- Generate rgb color based on hue method but with provided saturation and lightness.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/label_colorize. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the LabelColorize project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/label_colorize/blob/master/CODE_OF_CONDUCT.md).
