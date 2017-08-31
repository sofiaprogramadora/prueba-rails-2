class User < ApplicationRecord
	validates :name, presence: true
	validates :email, uniqueness: true
	has_many :items, dependent: :destroy
	before_save :changeName

	def changeName
		self.name.capitalize!
	end

end