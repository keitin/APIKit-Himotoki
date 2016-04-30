class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer   :blog_id
      t.timestamps null: false
    end
  end
end
