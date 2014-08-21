module Spree
	Product.class_eval do
		delegate_belongs_to :master, :runsize

		def runsizes
			JSON.parse (self.runsize || '[]')
		end

		def runsize_select
			options = {}
			runsizes.each do |r|
				quantity = r['quantity'].to_s
				price = r['price'].to_s
				options[quantity] = quantity + ' : ' + price
			end
			options
		end
	end
end
