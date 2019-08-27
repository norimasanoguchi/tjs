class AddIndexToTalent < ActiveRecord::Migration[5.2]
  def change
    add_index :talents, :email, unique:true
  end
end
