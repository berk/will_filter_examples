class FacebookStatusFilter < FqlFilter
  
  def fql_table_fields
    ["uid", "status_id", "time", "source", "message"]
  end
  
  def fql_table_name
    "status"
  end
  
  def definition
    @definition ||= {
      'uid' => { 
        :is               => :list,
        :is_not           => :list,
        :is_in            => :numeric_delimited
      }, 
      'status_id' => { 
        :is               => :numeric,
        :is_not           => :numeric,
        :is_in            => :numeric_delimited
      }, 
      'time' => { 
        :is               => :date_time,
        :is_after         => :date_time,
        :is_before        => :date_time,
        :is_in_the_range  => :date_time_range,
      }, 
      'source' => { 
        :is_provided      => :nil,
        :is_not_provided  => :nil,
        :is               => :text,
        :is_not           => :text,
        :contains         => :text,
        :does_not_contain => :text,
        :starts_with      => :text,
        :ends_with        => :text,
      }, 
      'message' => { 
        :is_provided      => :nil,
        :is_not_provided  => :nil,
        :is               => :text,
        :is_not           => :text,
        :contains         => :text,
        :does_not_contain => :text,
        :starts_with      => :text,
        :ends_with        => :text,
      }, 
    }
  end
  
  def default_condition_key
    'time'
  end
  
  def condition_options
    [
      ['Friend Name',               'uid'],
      ['Status Id',                 'status_id'],
      ['Date/Time',                 'time'],
      ['Source',                    'source'],
      ['Message',                   'message'],
    ]
  end
  
  def filter_options_for(key)
    if key == 'uid'
      return [] unless facebook_session
      @friends_list ||= facebook_session.user.friends!([:name]).collect{ |f| [f.name, f.uid] }
    end
    
    return []
  end
  
  def predefined_filters(identity)
    [
      ["Status Updates Today", "status_today"],
    ] 
  end

  def errors?
    return true if super
    
    has_time_condition = false 
    conditions.each do |cond|
      has_time_condition = true if cond.key == 'time' 
    end
    
    return false if has_time_condition
    
    @errors[:filter] = "Time condition must be specified for this filter" 
    true
  end
  
  def self.load_predefined_filter(identity, key)
    filter = self.name.constantize.new
    filter.key=key
    
    if key=="status_today"
      filter.add_condition('time', :is_after, [Date.today.to_s])
      return filter
    end
    
  end
  
end