class Item < ApplicationRecord
	belongs_to :category
	belongs_to :user, optional: true

	#devolver todos aquellos que tienen tamaño X
	scope :size_is, ->(a) { where("size = ?", a) }

	#Crear un scope que devuelva los items que no tienen
	#usuarios asignado.

	scope :no_user, -> {where(user_id: nil)}

end