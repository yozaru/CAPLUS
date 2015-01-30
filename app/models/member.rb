class Member < ActiveRecord::Base
  mount_uploader :image, ImageUploader
#  attr_protected :id
  scope :search_names_or, lambda { |search_word| where("name like ? or company like ? or job like ?", "%#{search_word}%", "%#{search_word}%" ,"%#{search_word}%") }
end

