Deface::Override.new(
	virtual_path: 'spree/products/_cart_form',
	name:         'include_runsize_in_cart_form',
	replace:      'div[id="product-price"]',
	text:

# https://github.com/spree/spree/blob/master/frontend/app/views/spree/products/_cart_form.html.erb
<<HTMLBLOB
<div id="product-price">
	<h6 class="product-section-title"><%= Spree.t(:price) %></h6>
	<div>
		<%= select_tag :runsize, options_for_select(@product.runsize_select) %>
		<span class="price selling" itemprop="price">
			$<%= number_to_currency(@product.runsizes[0]['price'], :unit => '') %>
		</span>
		<span itemprop="priceCurrency" content="<%= @product.currency %>"></span>
	</div>

	<% if @product.master.can_supply? %>
		<link itemprop="availability" href="http://schema.org/InStock" />
	<% elsif @product.variants.empty? %>
		<span class="out-of-stock"><%= Spree.t(:out_of_stock) %></span>
	<% end %>
</div>
HTMLBLOB
)
