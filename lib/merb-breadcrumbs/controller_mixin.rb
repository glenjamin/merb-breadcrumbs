module Merb
  module Breadcrumbs
    module ControllerMixin

      protected

      attr_accessor :breadcrumbs

      def breadcrumbs
        @breadcrumbs ||= []
      end

      # Convenience method for laying a trail of breadcrumbs
      def breadcrumb_trail(*args)
        args.each do |arg|
          send(:before, "#{arg}_crumb".to_sym)
        end
      end

      def push_crumb(text, link=nil)
        breadcrumbs << [text, link]
      end

      def action_crumb
        crumb_function = self.class.action_crumbs[action_name.to_sym]
        case crumb_function
          when Symbol then push_crumb(self.send(crumb_function))
          when String then push_crumb(crumb_function)
          when Array  then push_crumb(*crumb_function)
        end
      end

      module ClassMethods
        ACTION_CRUMBS = {
          :new     => 'New',
          :create  => 'New',
          :edit    => 'Edit',
          :update  => 'Edit',
          :delete  => 'Delete',
          :destroy => 'Delete',
        }

        def action_crumbs
          @@action_crumbs ||= begin
            super
          rescue NoMethodError
            ACTION_CRUMBS
          end
        end

        def more_action_crumbs(hash)
          @@action_crumbs = action_crumbs.merge(hash)
        end
      end # ClassMethods

    end # ControllerMixin
  end # Breadcrumbs
end # Merb
