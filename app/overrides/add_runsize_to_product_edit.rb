Deface::Override.new(
	virtual_path: 'spree/admin/products/_form',
	name:         'add_runsize_to_product_edit',
	insert_after: 'div[data-hook="admin_product_form_price"]',
	text:
<<HTMLBLOB
	<div data-hook="admin_product_form_runsize">
		<%= f.field_container :runsize do%>
			<%= f.label :runsize, raw(Spree.t(:runsize)) %>
			<%= f.hidden_field :runsize, :value => @product.runsize %>

			<div class="clearfix runsize_input_container">
				<% @product.runsizes.each do |runsize| %>
					<div class="runsize_input_set clearfix">
						<div class="alpha two columns">
							<%= text_field_tag 'runsize[][quantity]', runsize["quantity"], :placeholder => 'quantity' %>
						</div>
						<div class="omega two columns">
							<%= text_field_tag 'runsize[][price]', number_to_currency(runsize["price"], :unit => ''), :placeholder => 'price' %>
						</div>
					</div>
				<% end %>

				<div class="runsize_input_set clearfix">
					<div class="alpha two columns">
						<%= text_field_tag 'runsize[][quantity]', '', :placeholder => 'quantity' %>
					</div>
					<div class="omega two columns">
						<%= text_field_tag 'runsize[][price]', '', :placeholder => 'price' %>
					</div>
				</div>
			</div>

			<a class="runsize_add button">Add More</a>
		<% end %>
	</div>
HTMLBLOB
)
