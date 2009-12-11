class EventMember < ActiveRecord::Base
  belongs_to :event
  belongs_to :profile

  def self.generate_random_event_members(count = 1000)
    0.upto(count) do 
      EventMember.create(:profile => Profile.random, :event => Event.random)      
    end
  end
end
