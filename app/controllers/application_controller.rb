class ApplicationController < ActionController::Base
  before_filter :get_videos

  protect_from_forgery 

  def get_videos
    @videos = Video.all
    @featured = Video.where(:featured => true).limit(10)
    @list = [];
    @category = [];
    @categories = Video.uniq.pluck(:category)
  end

  def after_sign_in_path_for(resource)
    general_home_path
  end

   def after_sign_up_path_for(resource)
    general_home_path
  end

   def after_sign_out_path_for(resource)
    general_home_path
  end
end
