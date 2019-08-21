class Talent < ApplicationRecord
  validates :name,  presence: true
  validates :email, uniqueness: true, presence: true
  validates :birthday, presence: true
  validates :sex,  presence: true
  validates :edu_level,  presence: true
  validates :japanese_level,  presence: true

  enum sex: { 男性: 0, 女性: 1 }
  enum edu_level: { 中卒: 0, 高卒: 1, 大卒（学士）:2, 院卒（修士）:3, 院卒（博士）:4 }
  enum japanese_level: { N1: 0, N2: 1, N3: 2, N4: 3,N5: 4,JFT-Basicスコア200以上:5,資格なし:6 }

  belongs_to :visa
  belongs_to :country
  belongs_to :prefecture
end
