namespace :plugins do 
  
  desc 'Catch up on the latest plugin data'
  task :update => :environment do
    system "cd vendor/plugins/will_filter; git remote update; git merge origin/master;"
    system "git pull"
  end
  
end



