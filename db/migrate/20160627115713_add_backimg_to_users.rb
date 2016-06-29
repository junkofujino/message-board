class AddBackimgToUsers < ActiveRecord::Migration
  def change
    add_column :users, :backimg, :string
    add_column :users, :profile, :text
  end
end
