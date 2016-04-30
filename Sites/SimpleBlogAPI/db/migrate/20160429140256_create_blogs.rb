class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string    :title
      t.text      :sentence
      t.timestamps null: false
    end
  end
end
