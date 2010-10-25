class InheritedResourcesViewsGenerator < Rails::Generators::Base
  desc "Generates inherited_resource_views templates."

  class_option :template_engine, :type => :string, :aliases => "-t",
                                 :desc => "Template engine for the views. Available options are 'erb' and 'haml'."

  def self.source_root
    @_views_source_root ||= File.expand_path("../../templates/app/views", __FILE__)
  end

  def copy_views
    case options[:template_engine].to_sym
    when :haml
      verify_haml_existence
      verify_haml_version
      create_and_copy_haml_views
    else
      directory "inherited_resources", "app/views/inherited_resources"
    end
  end

  protected

  def verify_haml_existence
    begin
      require 'haml'
    rescue LoadError
      say "HAML is not installed, or it is not specified in your Gemfile."
      exit
    end
  end

  def verify_haml_version
    unless Haml.version[:major] == 2 and Haml.version[:minor] >= 3 or Haml.version[:major] >= 3
      say "To generate HAML templates, you need to install HAML 2.3 or above."
      exit
    end
  end

  def create_and_copy_haml_views
    begin
      require 'hpricot'
    rescue LoadError
      say "Hpricot is not installed, or it is not specified in your Gemfile."
      exit
    end

    begin
      require 'ruby_parser'
    rescue LoadError
      say "Ruby_parser is not installed, or it is not specified in your Gemfile."
      exit
    end

    require 'tmpdir'
    html_root = "#{self.class.source_root}/inherited_resources"

    Dir.mktmpdir("inherited_resources_views-haml.") do |haml_root|
      Dir["#{html_root}/**/*"].each do |path|
        relative_path = path.sub(html_root, "")
        source_path   = (haml_root + relative_path).sub(/erb$/, "haml")

        if File.directory?(path)
          FileUtils.mkdir_p(source_path)
        else
          `html2haml -r #{path} #{source_path}`
        end
      end

      directory haml_root, "app/views/inherited_resources"
    end
  end
end