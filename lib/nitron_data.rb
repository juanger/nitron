require 'nitron_data/version'

unless defined?(Motion::Project::Config)
  raise "This file must be required within a RubyMotion project Rakefile."
end

Motion::Project::App.setup do |app|
  Dir.glob(File.join(File.dirname(__FILE__), "nitron_data/**/*.rb")).each do |file|
    app.files.unshift(file)
  end

  Dir[File.join(File.dirname(__FILE__), 'nitron_data/model/**/*.rb')].each { |file| app.files.unshift(file) }
  Dir[File.join(File.dirname(__FILE__), 'nitron_data/relation/**/*.rb')].each { |file| app.files.unshift(file) }

  unless app.frameworks.include?("CoreData")
    app.frameworks << "CoreData"
  end
end

Dir.glob(File.join(File.dirname(__FILE__), "nitron_data/tasks/*.rake")) do |task|
  import task
end
