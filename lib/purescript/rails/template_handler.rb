module PureScript
  module Rails
    class TemplateHandler
      def self.erb_handler
        @@erb_handler ||= ActionView::Template.registered_template_handler(:erb)
      end


      def self.call(template)
        puts "wat"
        compiled_source = erb_handler.call(template)
        #"CoffeeScript.compile(begin;#{compiled_source};end)"
        `psc --stdin #{compiled_source}`
      end
    end
  end
end

ActiveSupport.on_load(:action_view) do
  puts "wat2"
  ActionView::Template.register_template_handler ".purs", PureScript::Rails::TemplateHandler
  puts ActionView::Template.handler_for_extension(".purs")
end
