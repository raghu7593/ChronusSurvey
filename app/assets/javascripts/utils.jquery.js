var jQuerySortable = {
  simpleSortable: function(){
    jQuery(".jquery_sortable").sortable({
      axis: 'y',
      update: function(event, ui) {
        jQuery.ajax({
          type: "post",
          url: jQuery(this).data("url"),
          data: jQuery(this).sortable('serialize', {key : 'new_order[]'})
        });
      },
      items: ".jquery_sort_items",
      handle: ".handle",
      placeholder: "ui-state-highlight"
    });
  }
}