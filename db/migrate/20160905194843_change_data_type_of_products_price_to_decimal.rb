class ChangeDataTypeOfProductsPriceToDecimal < ActiveRecord::Migration[5.0]
	
	def self.up
		change_column :products, :price, :decimal, :precision => 8, :scale => 2
	end

	def self.down
		change_column :products, :price, :string
	end

end
