# Purescript::Rails

Purescript adapter for the Rails asset pipeline.

## Installation

This gem requires the PureScript compiler be available in your $PATH. You can
find out how to install the PureScript compiler at
http://docs.purescript.org/en/latest/start.html#compiler-installation

The PureScript compiler requires the Haskell package manager "cabal" be
installed. It comes with the Haskell compiler GHC which is available at
http://www.haskell.org/haskellwiki/Haskell

Add this line to your application's Gemfile:

    gem 'purescript-rails'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install purescript-rails

## Usage

To compile a PureScript file with the asset pipeline, add the file to the
compile path and name like "my_script.js.purs".
