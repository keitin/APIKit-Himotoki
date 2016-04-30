class Text < ActiveRecord::Base
  has_one :material, as: :materialable, dependent: :destroy

  after_create :create_material

  private
  def create_material
    self.material = Material.create(blog_id: blog_id, order: order)
  end
end
