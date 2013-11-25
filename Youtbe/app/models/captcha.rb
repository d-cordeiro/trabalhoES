class Captcha < ActiveRecord::Base
  attr_accessible :code, :photo
end
