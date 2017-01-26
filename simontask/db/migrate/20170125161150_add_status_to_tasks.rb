class AddStatusToTasks < ActiveRecord::Migration[5.0]
  def change
    add_column(:tasks,:status,:boolean)
  end
end
