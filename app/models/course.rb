class Course < ActiveRecord::Base
  has_many :books
  enum :class_semester => [:Spring, :Summer, :Fall]
  validates :class_name, :class_description, :class_semester, :class_year, :presence => true
end
