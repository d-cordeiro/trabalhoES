class Channel < ActiveRecord::Base
  attr_accessible :account_id, :photo

  belongs_to :account, :inverse_of => :channel
  has_many :playlists, :inverse_of => :channel

end
