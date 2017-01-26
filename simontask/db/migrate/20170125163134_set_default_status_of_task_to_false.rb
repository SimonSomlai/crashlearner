class SetDefaultStatusOfTaskToFalse < ActiveRecord::Migration[5.0]
  def change
    change_column(:tasks,:status,:boolean,options={default: false})
  end
end
