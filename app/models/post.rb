class Post < ActiveRecord::Base
	validates :title, presence: true
	validates :lenguaje_origin, presence: true
	validates :translate, presence: true	
	validates :body, presence: true, length: { minimum:20 }
end
