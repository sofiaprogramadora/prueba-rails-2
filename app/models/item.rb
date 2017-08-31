class Item < ApplicationRecord
	belongs_to :category
	belongs_to :user, optional: true
	after_destroy :destroy_parent

	#devolver todos aquellos que tienen tamaño X
	scope :size_is, ->(a) { where("size = ?", a) }

	#Crear un scope que devuelva los items que no tienen
	#usuarios asignado.

	scope :no_user, -> {where(user_id: nil)}


	def to_s
		"#{self.name}: #{self.user}, #{self.size}"
	end

	def destroy_parent
		Category.all.each do |c|

			if c.items.empty?
				c.destroy
			end

		end
	end

end