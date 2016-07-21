# Datamuse

Find rhyming words using the [Datamuse api](http://www.datamuse.com/api/).


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'datamuse'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install datamuse

## Usage

```
client = Datamuse.new(rhymes_with: "dog", max: 10)

client.get_rhymes
 => [ #<Word:0x007ffcd4ad0308 @word="demagogue", @score=1168, @syllable_count=3>,
 #<Word:0x007ffcd4ad02e0 @word="frog", @score=758, @syllable_count=1>,
 #<Word:0x007ffcd4ad02b8 @word="dialogue", @score=684, @syllable_count=3>,
 #<Word:0x007ffcd4ad0268 @word="log", @score=642, @syllable_count=1>,
 ...SNIP
 ]

client.get_rhymes.map(&:word)
 => ["demagogue", "frog", "dialogue", "log", "analog", "hog", "agog", "epilogue", "bog", "blog"]

client = Datamuse.new(rhymes_with: "dog", related_to: "animals", max: 10)

client.get_rhymes.map(&:word)
 => ["frog", "hedgehog"]
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/nodanaonlyzuul/datamuse.

## But Also

I heard you rushed and rushed, and attacked
Then they rebuked then you had to smack
Causing rambunction throughout the sphere
Raise the levels of the boom inside the ear
