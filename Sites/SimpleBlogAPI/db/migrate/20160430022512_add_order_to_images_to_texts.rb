class AddOrderToImagesToTexts < ActiveRecord::Migration
  def change
    add_column :images, :order, :integer
    add_column :texts, :order, :integer
  end
end
