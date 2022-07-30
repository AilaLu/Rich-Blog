class ChangeTitle < ActiveRecord::Migration[6.1]
  def change
    rename_column :blogs, :title, :subject
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
