class Event < ActiveRecord::Base
  belongs_to :profile
  
  def self.random
    self.find(:first, :offset => rand(self.count - 1))
  end
  
  def self.generate_random_events(count = 1000)
    0.upto(count) do 
      next_id = Event.count
      Event.create(:profile => Profile.random, :name => "Event #{next_id}", :headline => "Headline #{next_id}", :start_time => Time.now)      
    end
  end
  
end
