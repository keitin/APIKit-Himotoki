class CreateTexts < ActiveRecord::Migration
  def change
    create_table :texts do |t|
      t.text :sentence
      t.integer   :blog_id
      t.timestamps null: false
    end
  end
end
