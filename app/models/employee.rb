class Employee < ActiveRecord::Base
 mount_uploader :image, ImageUploader
 scope :search_names_or, lambda { |search_word| where("name like ? or zaseki like ? or job like ? or project like ? or shumi like ? or game like ? or furigana like ? or mail like? or jico like? ", "%#{search_word}%", "%#{search_word}%", "%#{search_word}%", "%#{search_word}%", "%#{search_word}%", "%#{search_word}%", "%#{search_word}%", "%#{search_word}%", "%#{search_word}%") }
end
