var Surveys = {
  validateSurveyForm: function(){
    var survey_title = $("#survey_title")
    survey_title.change(function () {
      if(survey_title.val() == "") {
        survey_title.addClass("input-error");
      }
      else {
        survey_title.removeClass("input-error");
      }
    });
    $(".survey-form").on('submit', function (event) {
      if(survey_title.val() == "") {
        survey_title.addClass("input-error");
        return false;
      }
      else {
        return true;
      }
    });
  }
}