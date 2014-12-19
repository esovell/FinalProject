class Book < ActiveRecord::Base
  belongs_to :genre_id
  belongs_to :series_id
  belongs_to :course_id
  has_many :works
  has_many :authors, through: :works
  validates :book_title, :book_length, :book_summary, :book_date_finished, :genre_id, :presence => true
  validates :series_id, :class_id, allow_nil: true
end
