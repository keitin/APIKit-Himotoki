class AddOrderToMaterial < ActiveRecord::Migration
  def change
    add_column :materials, :order, :integer
  end
end



# 画像をorderを付けてAPIに送る
# carrior_waveからのS３にアップしURLをimagesに入れる
# テキストもorderと一緒にAPIに送る

