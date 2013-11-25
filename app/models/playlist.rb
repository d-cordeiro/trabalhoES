class Playlist < ActiveRecord::Base
  attr_accessible :channel_id, :name

  belongs_to :channel, :inverse_of => :playlist

end
