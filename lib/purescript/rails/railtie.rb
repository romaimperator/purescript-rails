module PureScript
  module Rails
    class Railtie < ::Rails::Railtie
      config.before_initialize do |app|
        Sprockets::Engines #force autoloading
        Sprockets.register_engine(".purs", PureScript::Template)
      end
    end
  end
end

