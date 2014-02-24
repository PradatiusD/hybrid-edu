jQuery(window).load(function() {

	var $container = jQuery('#gallery-2');
	$container.masonry({
		columnWidth: 292,
		itemSelector: '.gallery-item'
	});

});