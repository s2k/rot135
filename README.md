[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-2.1-4baaaa.svg)](code_of_conduct.md)
<sup style="font-size:125%;">᛫</sup>
[![Main workflow: unit tests](https://github.com/s2k/rot135/actions/workflows/main.yml/badge.svg)](https://github.com/s2k/rot135/actions) <sup style="font-size:125%;">᛫</sup>

# Rot135

A small tool to apply [ROT13](https://wikipedia.org/wiki/ROT13) to STDIN.

It 'encrypts' texts by applying `ROT13` to the characters 'a'-'z' and 'A'-'Z'.  No other characters will be changed, neither
those with diacritics such as 'š', nor symbols or (decimal) digits.

You _can_ use the command option -5 or --five (hyphen five) to transform decimal digits in a similar way. i.e.
transforming using the following table

| Input | Output |
|-------|--------|
| 0     | 5      |
| 1     | 6      |
| 2     | 7      |
| 3     | 8      |
| 4     | 9      |
| 5     | 0      |
| 6     | 1      |
| 7     | 2      |
| 8     | 3      |
| 9     | 4      |


## Installation

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install rot135

When using _Bundler_, add the gem to your `Gemfile`:

    $ bundle add rot135

Then run `bundle install`.

## Usage

`rot135` reads its input form `STDIN`, runs it through ROT13 and writes the result to STDOUT.

```bash
 > echo 'Hello World!' | rot135
Uryyb Jbeyq!
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can
also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the
version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version,
push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/s2k/rot135. This project is intended to be a
safe, welcoming space for collaboration, and contributors are expected to adhere to
the [code of conduct](https://github.com/s2k/rot135/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Rot135 project's codebases, issue trackers, chat rooms and mailing lists is expected to
follow the [code of conduct](https://github.com/s2k/rot135/blob/main/CODE_OF_CONDUCT.md).
