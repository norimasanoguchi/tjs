class SorceryResetPassword < ActiveRecord::Migration[5.2]
  def change
    add_column :talents, :reset_password_token, :string, default: nil
    add_column :talents, :reset_password_token_expires_at, :datetime, default: nil
    add_column :talents, :reset_password_email_sent_at, :datetime, default: nil
    add_column :talents, :access_count_to_reset_password_page, :integer, default: 0

    add_index :talents, :reset_password_token
  end
end
