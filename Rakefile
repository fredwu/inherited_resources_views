begin
  require 'bundler'
  Bundler::GemHelper.install_tasks
rescue Exception => e
end

require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'

desc 'Default: run unit tests.'
task :default => :test

desc 'Test the inherited_resources_views plugin.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

desc 'Generate documentation for the inherited_resources_views plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'InheritedResourcesViews'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

begin
  require 'jeweler'
  Jeweler::Tasks.new do |s|
    s.name = "inherited_resources_views"
    s.summary = "A lot of times resources share the same views, so why not DRY 'em up using Inherited Resources Views!"
    s.description = "Using Inherited Resources is an excellent way to reduce the amount of repetition in your controllers. But what about views? A lot of times resources share the same views, so why not DRY 'em up using Inherited Resources Views!"
    s.email = "ifredwu@gmail.com"
    s.homepage = "http://github.com/fredwu/inherited_resources_views"
    s.authors = ["Fred Wu"]
    s.add_dependency("inherited_resources", ">= 1.0")
    s.add_development_dependency("hpricot", ">= 0")
    s.add_development_dependency("ruby_parser", ">= 0")
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler not available. Install it with: gem install jeweler"
end