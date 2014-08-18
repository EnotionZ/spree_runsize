module Spree
	module Admin

		ProductsController.class_eval do
			update.before :modify_runsize_param

			private

			def modify_runsize_param
				runsize = [];
				params[:runsize].each do |r|
					quantity = r[:quantity].to_i
					price = r[:price].to_f
					if quantity != 0 and price != 0
						runsize << r
					end
				end
				params[:product][:runsize] = runsize.to_json
			end


		end

	end
end
