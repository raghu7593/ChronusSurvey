var Sections = {
  validateSectionForm: function(){
    var section_title = $("#section_title")
    section_title.change(function () {
      if(section_title.val() == "") {
        section_title.addClass("input-error");
      }
      else {
        section_title.removeClass("input-error");
      }
    });
    $(".section-form").on('submit', function (event) {
      if(section_title.val() == "") {
        section_title.addClass("input-error");
        return false;
      }
      else {
        return true;
      }
    });
  }
}