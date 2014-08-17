# RgbToHexColor

[![Gem Version](https://badge.fury.io/rb/rgb_to_hex_color.svg)](http://badge.fury.io/rb/rgb_to_hex_color)

Turn a tuple of rgb colors into its corresponding hexadecimal color value!

## Install

```
gem install rgb_to_hex_color
```

## Usage

```
require 'rgb_to_hex_color'

rgb_to_hex_color = RgbToHexColor.new(170, 187, 204)

rgb_to_hex_color.rgb #=> [170, 187, 204]
rgb_to_hex_color.hex #=> '#AABBCC'
```

## Development

### Install

```
gem install --dev rgb_to_hex_color
```

### Specs

The default Rake task is to run the specs.

```
rake
```

## License

MIT

