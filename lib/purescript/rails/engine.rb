require 'rails/engine'

module PureScript
  module Rails
    class Engine < ::Rails::Engine
      config.app_generators.javascript_engine :purescript
    end
  end
end
