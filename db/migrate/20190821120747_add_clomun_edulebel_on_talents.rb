class AddClomunEdulebelOnTalents < ActiveRecord::Migration[5.2]
  def change
    add_column :talents, :edu_level ,:integer, null: false
    add_column :talents, :japanese_level, :integer, null: false
  end
end
