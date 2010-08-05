require 'inherited_resources_views/action_view'

class ActionController::Base
  def self.inherited(base)
    super
    if base.respond_to?(:inherit_resources)
      ActionView::Base.send :include, InheritedResourcesViews::ActionView
    end
  end
end