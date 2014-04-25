namespace :starter do
  desc "Fill database with sample data"
  task :setup => :environment do
    puts "Setting up your project..."
    STDOUT.puts "Please choose a password for admin user:"
    input = STDIN.gets.strip
  end
end