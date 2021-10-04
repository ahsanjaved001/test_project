class AddUserIdToFeatures < ActiveRecord::Migration[6.1]
  def change
    add_column :features, :user_id, :integer
    add_column :features, :project_id, :integer
  end
end
