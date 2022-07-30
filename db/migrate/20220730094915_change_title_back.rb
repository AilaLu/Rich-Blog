class ChangeTitleBack < ActiveRecord::Migration[6.1]
  def change
    rename_column :blogs, :subject, :title
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
