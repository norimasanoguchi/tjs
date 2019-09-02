class Talent < ApplicationRecord
  authenticates_with_sorcery!

  validates :name,  presence: true
  validates :email, uniqueness: true, presence: true
  validates :birthday, presence: true
  validates :sex,  presence: true
  validates :edu_level,  presence: true
  validates :japanese_level,  presence: true
  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }


  enum sex: { 男性: 0, 女性: 1 }
  enum edu_level: { 中卒: 0, 高卒: 1, 大卒（学士）:2, 院卒（修士）:3, 院卒（博士）:4 }
  enum japanese_level: { N1: 0, N2: 1, N3: 2, N4: 3,N5: 4,JFTスコア200以上:5,資格なし:6 }

  # belongs_to :visa #has_oneかも？
  # belongs_to :country
  # belongs_to :prefecture
end
