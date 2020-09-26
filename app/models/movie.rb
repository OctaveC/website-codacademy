class Movie < ApplicationRecord
  belongs_to :collection

  validates :name, presence: true, uniqueness: { scope: :collection_id }
  validates :image_url, presence: true
end
