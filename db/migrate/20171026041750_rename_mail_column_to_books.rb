class RenameMailColumnToBooks < ActiveRecord::Migration[5.1]
  def change
    rename_column :Orders, :mail_address, :email
  end
end
