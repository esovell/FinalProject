class Genre < ActiveRecord::Base
  has_many :books
  validates :genre_name, :genre_description, :presence => true
end
