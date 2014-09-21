require "rails/generators/named_base"

module PureScript
  module Generators
    class AssetsGenerator < ::Rails::Generators::NamedBase
      source_root File.expand_path("../templates", __FILE__)

      def copy_purescript
        template "javascript.js.purs", File.join('app/assets/javascripts', class_path, "#{file_name}.js.purs")
      end
    end
  end
end

