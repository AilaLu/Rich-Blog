class AddDelete < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :deleted_at, :datetime
    add_index :articles, :deleted_at
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
