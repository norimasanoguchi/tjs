class Company < ApplicationRecord
  authenticates_with_sorcery!
  validates :name,  presence: true
  validates :email, uniqueness: true, presence: true
  validates :contact_person, presence: true
  validates :tel, presence: true

  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }

end
