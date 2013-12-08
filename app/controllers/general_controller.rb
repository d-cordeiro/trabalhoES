class GeneralController < ApplicationController
  def home
  	
  end

  def search
    @list = Video.where('title like ?', '%'+params[:q]+'%').order('title ASC');
  end

  def search_music
    @list = Video.where('category like Music').order('title ASC');
  end

end