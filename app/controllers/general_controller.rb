class GeneralController < ApplicationController
  def home
  	
  end

  def search
                    if !params[:q].blank?
                      @list = Video.where('title like ?', '%'+params[:q]+'%').order('title ASC');
                    end


  end

  def searchcategory
    @list = Video.where('category like ?', '%' + params[:q] + '%').order('title ASC');
  end

end