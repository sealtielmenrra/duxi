class Post < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	validates :title, presence: true
	validates :lenguaje_origin, presence: true
	validates :translate, presence: true	
	validates :body, presence: true, length: { minimum:20 }
	before_save :set_vists_count
	 has_attached_file :cover, styles: { medium: "1280x720", thumb:"800x600" }
	 validates_attachment_content_type :cover, content_type: /\Aimage\/.*\z/

	def update_vists_count
		#self.save if self.vists_count.nil?
		self.update(vists_count: self.vists_count + 1)
	end
	private
	def set_vists_count
		self.vists_count ||= 0
	end
end
