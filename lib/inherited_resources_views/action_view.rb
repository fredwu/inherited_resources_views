module InheritedResourcesViews
  module ActionView
    def self.included(base)
      base.class_eval do
        def self.process_view_paths(value)
          PathSet.new(Array.wrap(value))
        end
      end
    end
    
    class PathSet < ::ActionView::PathSet
      def find(path, prefix = nil, partial = false, details = {}, key = nil)
        super
      rescue ::ActionView::MissingTemplate
        super(path, "inherited_resources", partial, details, key)
      end
    end
  end
end