class AddPicsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :pics, :user_id, :string
  end
end
