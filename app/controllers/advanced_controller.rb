class AdvancedController < ApplicationController

  def profiles
    @model_filter = ProfileFilter.new(@own_profile).deserialize_from_params(params)
    @profiles = Profile.paginate(:order=>@model_filter.order_clause, :page=>page, :per_page=>@model_filter.per_page, :conditions=>@model_filter.sql_conditions)
  end

end
