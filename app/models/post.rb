class Post < ActiveRecord::Base
  
  validates :title, :presence=>true
  validates  :body, :presence=>true
  validates :published, :presence=>true
  
  
  has_friendly_id :title, :use_slug => true
  has_many :attachments, :as => 'attachable', :dependent => :destroy

  def self.promoted
    where(:promoted => true, :published=> true)
  end

  def self.published
    where(:published=> true)
  end
end
