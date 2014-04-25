namespace :starter do
  desc "Fill database with sample data"
  task :setup => :environment do
    puts "Setting up your project..."
  end
end