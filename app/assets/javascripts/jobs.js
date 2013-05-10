$(document).ready(function() {
  $("#user a.add_fields").
    data("association-insertion-position", 'before').
    data("association-insertion-node", 'this');

  $('#user').bind('cocoon:after-insert',
     function() {
       $("#user_from_list").hide();
       $("#user a.add_fields").hide();
       $('.nested-fields input').enableClientSideValidations();
     });
  $('#user').bind("cocoon:after-remove",
     function() {
       $("#user_from_list").show();
       $("#user a.add_fields").show();
     });
});