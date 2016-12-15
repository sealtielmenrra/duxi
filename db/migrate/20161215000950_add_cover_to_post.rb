class AddCoverToPost < ActiveRecord::Migration
  def change
  	add_attachment :posts, :cover
  end
end
