namespace :data do
  desc "import"
  task :import => :environment do
   remove =  Removal.all
   
   remove.each do |t|
     Girl.find_by_username(t.fb_id).delete if Girl.find_by_username
     Guys.find_by_username(t.fb_id).delete if Guys.find_by_username
     
      Girl.find_by_username(t.fb_id).delete
     Guys.find_by_username(t.fb_id).delete
   end
   end
end