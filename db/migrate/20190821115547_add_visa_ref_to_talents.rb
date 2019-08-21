class AddVisaRefToTalents < ActiveRecord::Migration[5.2]
  def change
    add_reference :talents, :visa, foreign_key: true
    add_reference :talents, :country, foreign_key: true
    add_reference :talents, :prefecture, foreign_key: true
  end
end
