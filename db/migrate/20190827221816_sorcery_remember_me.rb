class SorceryRememberMe < ActiveRecord::Migration[5.2]
  def change
    add_column :talents, :remember_me_token, :string, default: nil
    add_column :talents, :remember_me_token_expires_at, :datetime, default: nil
    add_column :talents, :crypted_password, :string
    add_column :talents, :salt, :string

    add_index :talents, :remember_me_token
  end
end
