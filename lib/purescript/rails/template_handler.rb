module PureScript
  module Rails
    class TemplateHandler
      def self.erb_handler
        @@erb_handler ||= ActionView::Template.registered_template_handler(:erb)
      end


      def self.call(template)
        compiled_source = erb_handler.call(template)
        Tempfile.open('purescript-', Rails.root.join('tmp')) do |f|
          begin
            f.write(compiled_source)
            f.flush
            output = `psc #{compiled_source} --main`
          ensure
            f.close
            f.unlink
          end
        end
        output
      end
    end
  end
end

ActiveSupport.on_load(:action_view) do
  ActionView::Template.register_template_handler :purescript, PureScript::Rails::TemplateHandler
end
