namespace :testing do
  task :new_task => :environment do
    remove = Removal.all
  end
  
  remove.each do |p|
    puts "ASD"
  end
end