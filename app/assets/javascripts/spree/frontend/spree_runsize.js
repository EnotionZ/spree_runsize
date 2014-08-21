// Placeholder manifest file.
// the installer will append this file to the app vendored assets here: vendor/assets/javascripts/spree/frontend/all.js'
$(document).ready(function() {
	var $priceField = $('.price.selling');
	var $runsizeSelect = $('#product-price #runsize').change(function(e) {
		var price = e.currentTarget.value.split(' : ')[1];
		var fmtPrice = '$' + parseFloat(price).toFixed(2);
		$priceField.text(fmtPrice);
	});
});
