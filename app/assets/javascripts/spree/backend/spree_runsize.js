// Placeholder manifest file.
// the installer will append this file to the app vendored assets here: vendor/assets/javascripts/spree/backend/all.js'

$(document).ready(function() {
	var $runsizeInputs = $('.runsize_input_set');
	if($runsizeInputs[0]) {
		var $runsizeInputContainer = $('.runsize_input_container');
		var tmpl = $runsizeInputs.last()[0].outerHTML;
		var addRunsizeSet = function() { $runsizeInputContainer.append(tmpl); };
		$('.runsize_add').click(addRunsizeSet);
	}
});
