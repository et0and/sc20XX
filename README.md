# sc20XX

A SoundCloud client built for the terminal, improving upon Soundcloud2000

## Requirements

  * Ruby (1.9+)
  * Portaudio (19)
  * Mpg123 (1.14)

## Installation

Assuming you have Ruby/Rubygems installed, you need portaudio and mpg123 as
library to compile the native extensions.

### OSX

    xcode-select --install
    brew install portaudio
    brew install mpg123
    gem install sc20XX

### Debian / Ubuntu

    apt-get install portaudio19-dev libmpg123-dev libncurses-dev ruby1.9.1-dev
    gem install sc20XX

## Usage

  In order to use sc20XX, you need to [acquire a client credential for your application](http://soundcloud.com/you/apps/new). soundcloud2000 expects a valid client id to be set in the SC_CLIENT_ID environment variable.

  You can either set this up in your `.bashrc` or equivalent or you can specify it on the command line:

    SC_CLIENT_ID=YOUR_CLIENT_ID sc20XX

## Features

  * stream SoundCloud tracks in your terminal (`enter`)
  * scroll through sound lists (`down` / `up`)
  * play / pause support (`space`)
  * forward / rewind support (`right` / `left`)
  * play tracks of different users (`u`)
  * play favorites from a user (`f`)
  * play sets/playlists from a user  (`s`)
  * level meter]