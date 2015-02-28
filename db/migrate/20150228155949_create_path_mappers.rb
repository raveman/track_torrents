class CreatePathMappers < ActiveRecord::Migration
  def change
    create_table :path_mappers do |t|
      t.string :title
      t.string :path

      t.timestamps null: false
    end
  end
end
