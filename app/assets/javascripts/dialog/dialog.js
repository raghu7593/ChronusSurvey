$(document).ready(function() {
  var dlgtrigger = document.querySelector( '[data-dialog]' ), creditsdialog = document.getElementById( dlgtrigger.getAttribute( 'data-dialog' ) ), dlg = new DialogFx( creditsdialog );
  dlgtrigger.addEventListener( 'click', dlg.toggle.bind(dlg) );
});