class Work < ActiveRecord::Base
  belongs_to :book_id
  belongs_to :author_id
  validates :author_id, :book_id, :presence => true
end
