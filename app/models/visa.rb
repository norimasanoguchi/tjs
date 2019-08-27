# == Schema Information
#
# Table name: visas
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Visa < ApplicationRecord
  validates :name,  presence: true
  has_many :talents
end
