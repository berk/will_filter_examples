class ProfileFilter < ModelFilter

  def initialize(identity)
    super('Profile', identity)
  end

  def definition
    defs = super  
    defs[:sex][:is] = :list
    defs[:sex][:is_not] = :list
    defs
  end

  def value_options_for(criteria_key)
    if criteria_key == :sex
      return ["male", "female"]
    end

    return []
  end

  def predefined_filters(profile)
    [
      ["Male Only", "male_only"],
      ["Female Only", "female_only"],
    ]
  end

  def self.load_predefined_filter(profile, filter_name)
    filter = self.name.constantize.new(profile)
    filter.key = filter_name

    if (filter_name == "male_only")
      filter.add_condition(:sex, :is, ["male"])
      return filter
    end

    if (filter_name == "female_only")
      filter.add_condition(:sex, :is, ["female"])
      return filter
    end

    nil
  end

end
