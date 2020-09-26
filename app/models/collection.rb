class Collection < ApplicationRecord
  has_many :movies, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :banner_url, presence: true
end
