class InheritedResourcesViewsGenerator < Rails::Generator::Base
  def manifest
    directory = "app/views/inherited_resources"
    record do |m|
      m.directory directory
      m.file "#{directory}/_form.html.erb", "#{directory}/_form.html.erb"
      m.file "#{directory}/edit.html.erb", "#{directory}/edit.html.erb"
      m.file "#{directory}/index.html.erb", "#{directory}/index.html.erb"
      m.file "#{directory}/new.html.erb", "#{directory}/new.html.erb"
      m.file "#{directory}/show.html.erb", "#{directory}/show.html.erb"
    end
  end
end