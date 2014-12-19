class Author < ActiveRecord::Base
  has_many :works
  has_many :books, through: :works
  validates :author_first_name, :author_last_name, :presence => true
  validates :author_website, uniqueness: true
  validates :author_website, :author_birthdate, allow_nil: true
end
