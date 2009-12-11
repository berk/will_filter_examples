class FacebookUserFilter < FqlFilter
  
  def fql_table_fields
    ["uid", "first_name", "last_name", "profile_url", "birthday", "sex"]
  end
  
  def fql_table_name
    "user"
  end
  
  def definition
    @definition ||= {
      'uid' => { 
        :is               => :numeric,
        :is_not           => :numeric,
        :is_in            => :numeric_delimited
      }, 
      'first_name' => { 
        :is_provided      => :nil,
        :is_not_provided  => :nil,
        :is               => :text,
        :is_not           => :text,
        :contains         => :text,
        :does_not_contain => :text,
        :starts_with      => :text,
        :ends_with        => :text,
        :is_in            => :text_delimited
      }, 
      'last_name' => { 
        :is_provided      => :nil,
        :is_not_provided  => :nil,
        :is               => :text,
        :is_not           => :text,
        :contains         => :text,
        :does_not_contain => :text,
        :starts_with      => :text,
        :ends_with        => :text,
        :is_in            => :text_delimited
      }, 
      'name' => { 
        :is_provided      => :nil,
        :is_not_provided  => :nil,
        :is               => :text,
        :is_not           => :text,
        :contains         => :text,
        :does_not_contain => :text,
        :starts_with      => :text,
        :ends_with        => :text,
      }, 
      'pic' => { 
        :is_provided      => :nil,
        :is_not_provided  => :nil,
      }, 
      'affiliations.name' => { 
        :is               => :text,
        :is_provided      => :nil,
        :is_not_provided  => :nil,
        :contains         => :text,
        :does_not_contain => :text,
      }, 
      'profile_update_time' => { 
        :is               => :text
      }, 
      'timezone' => { 
        :is               => :text
      }, 
      'religion' => { 
        :is               => :text,
        :is_provided      => :nil,
        :is_not_provided  => :nil,
        :contains         => :text,
        :does_not_contain => :text,
      }, 
      'birthday' => { 
        :is               => :text,
        :is_provided      => :nil,
        :is_not_provided  => :nil,
        :contains         => :text,
        :does_not_contain => :text,
      }, 
      'sex' => { 
        :is_provided      => :nil,
        :is_not_provided  => :nil,
        :is               => :list,
        :is_not           => :list,
      }, 
      'hometown_location.city' => { 
        :is               => :text,
        :is_provided      => :nil,
        :is_not_provided  => :nil,
        :contains         => :text,
        :does_not_contain => :text,
        :is_in            => :text_delimited
      }, 
      'hometown_location.state' => { 
        :is               => :text,
        :is_provided      => :nil,
        :is_not_provided  => :nil,
        :contains         => :text,
        :does_not_contain => :text,
        :is_in            => :text_delimited
      }, 
      'hometown_location.country' => { 
        :is               => :text,
        :is_provided      => :nil,
        :is_not_provided  => :nil,
        :contains         => :text,
        :does_not_contain => :text,
        :is_in            => :text_delimited
      }, 
      
      'meeting_sex'  => { 
        :is_provided      => :nil,
        :is_not_provided  => :nil,
        :contains         => :list,
        :does_not_contain => :list,
      }, 
      'meeting_for'   => { 
        :is_provided      => :nil,
        :is_not_provided  => :nil,
        :contains         => :list,
        :does_not_contain => :list,
      }, 
      'relationship_status' => { 
        :is_provided      => :nil,
        :is_not_provided  => :nil,
        :is               => :list,
        :is_not           => :list,
      }, 
      'significant_other_id' => { 
        :is               => :text
      }, 
      'political' => { 
        :is               => :text,
        :is_provided      => :nil,
        :is_not_provided  => :nil,
        :contains         => :text,
        :does_not_contain => :text,
        :is_in            => :text_delimited
      }, 
      
      'current_location.city' => { 
        :is               => :text,
        :is_provided      => :nil,
        :is_not_provided  => :nil,
        :contains         => :text,
        :does_not_contain => :text,
        :is_in            => :text_delimited
      }, 
      'current_location.state' => { 
        :is               => :text,
        :is_provided      => :nil,
        :is_not_provided  => :nil,
        :contains         => :text,
        :does_not_contain => :text,
        :is_in            => :text_delimited
      }, 
      'current_location.country' => { 
        :is               => :text,
        :is_provided      => :nil,
        :is_not_provided  => :nil,
        :contains         => :text,
        :does_not_contain => :text,
        :is_in            => :text_delimited
      }, 
      
      'activities' => { 
        :is_provided      => :nil,
        :is_not_provided  => :nil,
        :contains         => :text,
        :does_not_contain => :text,
      }, 
      'interests' => { 
        :is_provided      => :nil,
        :is_not_provided  => :nil,
        :contains         => :text,
        :does_not_contain => :text,
      }, 
      'is_app_user' => { 
        :is               => :boolean
      }, 
      'music' => { 
        :is_provided      => :nil,
        :is_not_provided  => :nil,
        :contains         => :text,
        :does_not_contain => :text,
      }, 
      'tv' => { 
        :is_provided      => :nil,
        :is_not_provided  => :nil,
        :contains         => :text,
        :does_not_contain => :text,
      }, 
      'movies' => { 
        :is_provided      => :nil,
        :is_not_provided  => :nil,
        :contains         => :text,
        :does_not_contain => :text,
      }, 
      'books' => { 
        :is_provided      => :nil,
        :is_not_provided  => :nil,
        :contains         => :text,
        :does_not_contain => :text,
      }, 
      'quotes' => { 
        :is_provided      => :nil,
        :is_not_provided  => :nil,
        :contains         => :text,
        :does_not_contain => :text,
      }, 
      'about_me' => { 
        :is_provided      => :nil,
        :is_not_provided  => :nil,
        :contains         => :text,
        :does_not_contain => :text,
      }, 
      'hs_info' => { 
        :contains         => :text,
        :does_not_contain => :text,
      }, 
      'education_history.name' => { 
        :is              => :text,
        :is_not          => :text,
      }, 
      'education_history.year' => { 
        :is              => :text,
        :is_not          => :text,
      }, 
      'education_history.degree' => { 
        :is              => :text,
        :is_not          => :text,
      }, 
      'work_history.company_name' => { 
        :is_provided      => :nil,
        :is_not_provided  => :nil,
        :contains         => :text,
        :does_not_contain => :text,
      }, 
      'notes_count' => { 
        :is               => :numeric,
        :is_greater_than  => :numeric,
        :is_less_than     => :numeric,
        :is_in_the_range  => :numeric_range,
      }, 
      'wall_count' => { 
        :is               => :numeric,
        :is_greater_than  => :numeric,
        :is_less_than     => :numeric,
        :is_in_the_range  => :numeric_range,
      }, 
      'status' => { 
        :is_provided      => :nil,
        :is_not_provided  => :nil,
        :contains         => :text,
        :does_not_contain => :text,
      }, 
      'online_presence' => { 
        :is               => :list,
        :is_not           => :list
      }, 
      'locale' => { 
        :is               => :list
      }, 
      'verified' => { 
        :is               => :boolean
      }, 
    }
  end
  
  def default_condition_key
    'first_name'
  end
  
  def criteria_options
    [
    ['User Id',                   'uid'],
    ['First Name',                'first_name'],
    ['Last Name',                 'last_name'],
    ['Name',                      'name'],
    ['Gender',                    'sex'],
    ['Zodiac Sign',               'zodiac_sign'],
    ['Chinese Sign',              'chinese_sign'],
    ['Birthday',                  'birthday'],
    ['Profile Picture',           'pic'],
    ['Realtionship Status',       'relationship_status'],
    ['Status',                    'status'],
    ['Hometown City',             'hometown_location.city'],
    ['Hometown State',            'hometown_location.state'],
    ['Hometown Country',          'hometown_location.country'],
    ['Current City',              'current_location.city'],
    ['Current State',             'current_location.state'],
    ['Current Country',           'current_location.country'],
    ['Meeting For',               'meeting_for'],
    ['Meeting Gender',            'meeting_sex'],
    ['Political Views',           'political'],
    ['Religious Views',           'religion'],
    ['About Me',                  'about_me'],
    ['Quotes',                    'quotes'],
    ['Interests',                 'interests'],
    ['Activities',                'activities'],
    ['Books',                     'books'],
    ['Movies',                    'movies'],
    ['Music',                     'music'],
    ['TV Shows',                  'tv'],
    ['Wall Postings Count',       'wall_count'],
    ['Notes Count',               'notes_count'],
    ['Online Status',             'online_presence'],
    ['Uses Friends Filter',       'is_app_user'],
    ]
  end
  
  def filter_options_for(key)
    if key == 'sex' or key == 'meeting_sex'
      return ["male", "female"]
    end
    
    if key == 'relationship_status'
      return ["Single", "In a Relationship", "Engaged", "Married", "It's Complicated", "In an Open Relationship"]
    end
    
    if key == 'meeting_for'
      return ["Friendship", "Dating", "A Relationship", "Networking"]
    end

    if key == 'online_presence'
      return ["active", "idle", "offline", "error"]
    end
   
    
    return []
  end
  
  def predefined_filters(identity)
    [
      ["Single Females", "single_females"],
      ["Single Males", "single_males"],
      ["Family (same last name)", "family"],
    ] 
  end
  
  def self.load_predefined_filter(identity, key)
    filter = self.name.constantize.new
    filter.key=key
    
    if key=="single_females"
      filter.add_condition('sex', :is, ["female"])
      filter.add_condition('relationship_status', :is, ["single"])
      return filter
    end
    
    if key=="single_males"
      filter.add_condition('sex', :is, ["male"])
      filter.add_condition('relationship_status', :is, ["single"])
      return filter
    end

    if key=="family"
      filter.add_condition('last_name', :is, [identity.last_name])
      return filter
    end
    
  end
  
end