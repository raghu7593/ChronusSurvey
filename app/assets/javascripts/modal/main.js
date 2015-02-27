jQuery(document).ready(function($){
	var $modal = $('.cd-modal'),
		$main_nav = $('.cd-modal-call');

	$main_nav.on('click', function(event){
		$modal.addClass('is-visible');	
	});

	$modal.on('click', function(event){
		if( $(event.target).is($modal) || $(event.target).is('.cd-close-form') ) {
			$modal.removeClass('is-visible');
		}
	});
	$(document).keyup(function(event){
  	if(event.which=='27'){
  		$modal.removeClass('is-visible');
    }
  });
	$(".clear-modal").click(function() {
	  $('.cd-modal-header').html('');
	  $('.cd-modal-data').html('');
	});
});