require 'tilt/purescript'
require 'sprockets/railtie'

module PureScript
  module Rails
    class Engine < ::Rails::Engine
      config.app_generators.javascript_engine :purescript
    end
  end
end
