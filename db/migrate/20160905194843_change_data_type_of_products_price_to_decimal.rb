class ChangeDataTypeOfProductsPriceToDecimal < ActiveRecord::Migration[5.0]
	
	def change
		change_column :products, :price, :decimal(8,2)
	end

end
