class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.integer :materialable_id
      t.string  :materialable_type
      t.integer :blog_id
      t.timestamps null: false
    end
  end
end
