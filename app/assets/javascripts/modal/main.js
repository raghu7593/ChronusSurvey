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
  $(".clear-modal").click(function() {
    $('.cd-modal-header').html('');
    $('.cd-modal-data').html('<img class="loading" src="/assets/loading.gif" />');
  });

  $('.cd-popup-trigger').on('click', function(event){
    event.preventDefault();
    $('.cd-popup-data').html($(this).data().message);
    $('.cd-popup-delete-action').attr('href', $(this).attr('href'));
    $('.cd-popup').addClass('is-visible');
  });
  $('.cd-popup').on('click', function(event){
    if( $(event.target).is('.cd-popup-close') || $(event.target).is('.cd-popup') || $(event.target).is('.cd-popup-no-action') ) {
      event.preventDefault();
      $(this).removeClass('is-visible');
    }
  });

  // Esc key function
  $(document).keyup(function(event){
    if(event.which=='27'){
      $modal.removeClass('is-visible');
      $('.cd-popup').removeClass('is-visible');
    }
  });
});