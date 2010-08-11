require 'inherited_resources_views/action_view'

defined?(ActionView) and ActionView::Base.send :include, InheritedResourcesViews::ActionView