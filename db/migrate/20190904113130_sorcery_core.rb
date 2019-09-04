class SorceryCore < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :email,            null: false
      t.string :crypted_password
      t.string :salt
      t.string :name,            null: false
      t.string :contact_person,  null: false
      t.string :tel,             null: false
      t.boolean :admin,          null: false ,default: false

      t.timestamps                null: false
    end

    add_index :companies, :email, unique: true
  end
end
