class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string     :name
      t.text       :image_url
      t.string     :facebook_id
      t.string     :email
      t.string     :token
      t.timestamps null: false
    end
  end
end
