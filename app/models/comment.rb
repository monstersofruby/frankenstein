class Comment < ActiveRecord::Base
  belongs_to :link
  validates_presence_of :author, :body, :link_id
end
