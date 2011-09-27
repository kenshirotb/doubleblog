class Post < ActiveRecord::Base
  validates :globaltitle, :presence => true
  validates :title1, :presence => true
  validates :title2, :presence => true
  validates :content1, :presence => true
  validates :content2, :presence => true
  
  has_many :comments, :dependent => :destroy
  has_many :tags
 
  accepts_nested_attributes_for :tags, :allow_destroy => :true,
    :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }
end
