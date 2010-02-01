module Merb
  module Breadcrumbs
    module Helpers
      def breadcrumb_links(join=' &raquo; ')
        crumbs = self.breadcrumbs.dup
        last = crumbs.pop
        crumbs.map! do |text, link|
          if link.nil?
            tag :a, text
          else
            link_to(text, link)
          end
        end
        text, link = last
        if link.nil? or link == url(:this)
          crumbs << tag(:a, text)
        else
          crumbs << link_to(text, link)
        end
        crumbs.join(join)
      end
    end # Helpers
  end # Breadcrumbs
end # Merb
