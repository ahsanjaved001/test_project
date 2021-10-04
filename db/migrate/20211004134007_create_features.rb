class CreateFeatures < ActiveRecord::Migration[6.1]
  def change
    create_table :features do |t|
      t.string :description
      t.string :title
      t.date :deadline
      t.string :status
      t.timestamps
    end
  end
end
