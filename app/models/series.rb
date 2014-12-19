class Series < ActiveRecord::Base
  has_many :books
  enum :series_finished => [:Yes, :No]
  validates :series_title, :series_description, :series_book_count, :series_finished, :presence => true
end
