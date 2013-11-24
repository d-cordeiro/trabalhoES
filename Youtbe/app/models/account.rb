class Account < ActiveRecord::Base
  attr_accessible :admin, :date_birth, :email, :name, :password

  has_one :channel, :inverse_of => :account


end
