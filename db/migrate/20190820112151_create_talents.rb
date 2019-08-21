class CreateTalents < ActiveRecord::Migration[5.2]
  def change
    create_table :talents do |t|
      t.string :name, null:false
      t.string :email, null:false
      t.date :birthday, null:false
      t.integer :sex, null:false
      t.integer :tel
      t.timestamps
    end
  end
end
