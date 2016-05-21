# libopus.js

Bare-bones [Opus](http://www.opus-codec.org/) library codec functionality for
JavaScript applications to build on.

## Requirements

[emscripten](http://kripken.github.io/emscripten-site/)

## Usage

There is an `export_symbols.json` file that lists the set of C API symbols to
export from the [Opus API docs][docs]. The quintessential symbols for encoding
and decoding are already included.

1. `git clone https://github.com/cdolan/libopus.js`
2. `cd libopus.js`
3. `make`

[docs]: http://opus-codec.org/docs/opus_api-1.1.2/index.html

## License

BSD. Read the [Opus License page](http://www.opus-codec.org/license/) regarding
patents.
