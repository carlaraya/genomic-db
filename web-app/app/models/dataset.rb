class Dataset < ApplicationRecord
  validates :name, length: { in: 10..100 }
  validates :description, length: { maximum: 1000 }
  validates :uploader, length: { in: 3..100 }
  validates :institute, length: { in: 3..100 }
end
