class Status < ApplicationRecord
	#attr_accessible :content
	belongs_to :user
end
