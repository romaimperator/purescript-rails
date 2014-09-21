require 'tilt/template'

module PureScript
  # PureScript template implementation. See:
  # http://purescript.org/
  #
  # PureScript templates do not support object scopes, locals, or yield.
  class Template < ::Tilt::Template
    self.default_mime_type = 'application/javascript'

    @@default_bare = false

    def self.default_bare
      @@default_bare
    end

    def self.default_bare=(value)
      @@default_bare = value
    end

    # DEPRECATED
    def self.default_no_wrap
      @@default_bare
    end

    # DEPRECATED
    def self.default_no_wrap=(value)
      @@default_bare = value
    end

    def self.engine_initialized?
      defined? ::PureScript
    end

    def initialize_engine
      require_template_library 'purescript'
    end

    def prepare
      puts "prepare"
      if !options.key?(:bare) and !options.key?(:no_wrap)
        options[:bare] = self.class.default_bare
      end
    end

    def evaluate(scope, locals, &block)
      @output ||= `psc #{file}`
    end

    def allows_script?
      false
    end
  end
end

