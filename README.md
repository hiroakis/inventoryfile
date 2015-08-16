# Inventoryfile

Inventoryfile. A parser for ansible inventory file which is an INI like formatted file.

## Installation


```ruby
gem 'inventoryfile'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install inventoryfile

## Usage

```
require 'inventoryfile'

parser = Inventoryfile::Parser.new("PATH_TO_FILE")
parser.parse("SECTION_NAME")
```

## Contributing

1. Fork it ( https://github.com/hiroakis/inventoryfile/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## License

MIT
