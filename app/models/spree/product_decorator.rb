module Spree
	Product.class_eval do
		delegate_belongs_to :master, :runsize

		def runsizes
			JSON.parse (self.runsize || '[]')
		end
	end
end
