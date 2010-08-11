generator = defined?(Rails::Generators::Base) ? "current" : "legacy"
require File.dirname(__FILE__) + "/generators/#{generator}_generator"