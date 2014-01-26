# Cwflash

Cwflash is a game to help you learn cw (aka Morse code) by using flash cards. It plays a character(s) or prosign and you can type in your answer. The flash cards are stored in JSON files. 

You can find some examples in the samples directory of the gem. 

To add cards, create a new JSON file (copy the format of a sample) and save it to the samples directory. It will automatically show up in the menu. 

The samples are a full set of characters broken up into groups of about 4. There is a file of commonly used prosigns. Prosigns are sent without a break as they should be.

## Installation

Add this line to your application's Gemfile:

    gem 'cwflash'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cwflash

## Usage

    $ cwflash

## Contributing

1. Fork it ( http://github.com/<my-github-username>/cwflash/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
