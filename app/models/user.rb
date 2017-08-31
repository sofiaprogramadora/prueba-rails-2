class User < ApplicationRecord
	validates :name, presence: true
	validates :email, uniqueness: true
	has_many :items
	before_save :changeName

	def changeName
		self.name.capitalize!
	end

end