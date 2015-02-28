class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :title
      t.string :url
      t.date :last_checked
      t.string :download_to

      t.timestamps null: false
    end
  end
end
