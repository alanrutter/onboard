class House < ActiveRecord::Base

	has_attached_file :image, default_url: "missing.png"
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
	
	has_many :orders

end
