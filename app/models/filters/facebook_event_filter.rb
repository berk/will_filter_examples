class FacebookEventFilter < FqlFilter
  
  def fql_table_fields
    ["uid", "status_id", "time", "source", "message"]
  end
  
  def fql_table_name
    "status"
  end
  
  def definition
    @definition ||= {
      'uid' => { 
        :is               => :numeric,
        :is_not           => :numeric,
        :is_in            => :numeric_delimited
      }, 
      'status_id' => { 
        :is               => :numeric,
        :is_not           => :numeric,
        :is_in            => :numeric_delimited
      }, 
      'time' => { 
        :is               => :numeric,
        :is_greater_than  => :numeric,
        :is_less_than     => :numeric,
        :is_in_the_range  => :numeric_range,
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
  
  def criteria_options
    [
      ['User Id',                   'uid'],
      ['Status Id',                 'status_id'],
      ['Time',                      'time'],
      ['Source',                    'source'],
      ['Message',                   'message'],
    ]
  end
  
  def filter_options_for(key)
    if key == 'sex' or key == 'meeting_sex'
      return ["male", "female"]
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
      filter.add_condition('sex', :is, ["female"])
      filter.add_condition('relationship_status', :is, ["single"])
      return filter
    end
    
  end
  
end