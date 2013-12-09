class RegistrationsController < Devise::RegistrationsController
  def create
      if verify_recaptcha
        super
      else
        build_resource
        clean_up_passwords(resource)
        flash[:error] = "There was an error with the recaptcha code below. Please re-enter the code and click submit."

        redirect_to :controller => 'registrations', :action => :new

        #render :new
      end
    end
end