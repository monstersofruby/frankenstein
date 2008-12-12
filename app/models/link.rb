class Link < ActiveRecord::Base
  has_many :comments
  validates_presence_of :title, :url
  validates_format_of :url, :with => /^http:\/\//
  
  def vote!
    update_attributes(:votes => votes + 1)
  end
end
