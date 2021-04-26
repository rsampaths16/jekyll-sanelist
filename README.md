# Jekyll::Sanelist

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/jekyll/sanelist`.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'jekyll-sanelist'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install jekyll-sanelist

## Usage

```html
<html>
    {% assign asanelist = alist | sanelist %}
    {% if asanelist.size == 0 %}
      <!-- Do something for empty list -->
    {% elsif asanelist.size == 1 %}
      <!-- Do something for single-item list -->
    {% elsif asanelist.size > 1 %}
      <!-- Do something for multi-item list -->
    {% endif %}

    {% for element in asanelist %}
        {% case element.type %{
            {% when "item" %}
                <!-- Do someting with element.data in the below block based on where it appears -->
                {% if element.isFirst and element.isLast %}
                {% elsif element.isFirst %}
                {% elsif element.isLast %}
                {% else %}
                {% endif %}

            {% when "delimiter" %}
                <!-- Insert appropriate delimiter in the below block based on where it appears -->
                {% if element.isFirst and element.isLast %}
                {% elsif element.isFirst %}
                {% elsif element.isLast %}
                {% else %}
                {% endif %}
        {% endcase %}
    {% endfor %}
</html>
```

## Development

After checking out the repo, run `script/bootstrap` to install dependencies. Then, run `rake spec` to run the tests.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/rsampaths16/jekyll-sanelist.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
