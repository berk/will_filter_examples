class SimpleController < ApplicationController

  def profiles
    @model_filter = ModelFilter.new("Profile", @own_profile).deserialize_from_params(params)    
    @profiles = Profile.paginate(:order=>@model_filter.order_clause, :page=>page, :per_page=>@model_filter.per_page, :conditions=>@model_filter.sql_conditions)
  end

  def events
    @model_filter = ModelFilter.new("Event", @own_profile).deserialize_from_params(params)    
    @events = Event.paginate(:order=>@model_filter.order_clause, :page=>page, :per_page=>@model_filter.per_page, :conditions=>@model_filter.sql_conditions)
  end

  def event_members
    @model_filter = ModelFilter.new("EventMember", @own_profile).deserialize_from_params(params)    
    @event_members = EventMember.paginate(:order=>@model_filter.order_clause, :page=>page, :per_page=>@model_filter.per_page, :conditions=>@model_filter.sql_conditions)
  end

end
