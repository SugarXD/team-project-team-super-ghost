class CreateUploads < ActiveRecord::Migration
  def change
    create_table :uploads do |t|
      t.text :filename
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
