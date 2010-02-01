require 'merb-breadcrumbs/controller_mixin'
require 'merb-breadcrumbs/helpers'

if defined?(Merb::Plugins)
  module Merb
    class AbstractController
      include Merb::Breadcrumbs::ControllerMixin
      extend Merb::Breadcrumbs::ControllerMixin::ClassMethods
    end
    module GlobalHelpers
      include Merb::Breadcrumbs::Helpers
    end
  end
end
