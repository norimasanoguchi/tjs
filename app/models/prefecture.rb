class Prefecture < ApplicationRecord
  validates :name,  presence: true
  has_many :talents
end
