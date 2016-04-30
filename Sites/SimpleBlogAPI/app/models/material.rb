class Material < ActiveRecord::Base
  belongs_to :blog
  belongs_to :materialable, polymorphic: true
end