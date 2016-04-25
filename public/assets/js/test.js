function alertaCobra(){
	alert('WOLOLOLO!!');

}

function avisoToast(){

		toastr.options = {
			"closeButton": true,
			"debug": false,
			"newestOnTop": false,
			"progressBar": true,
			"positionClass": "toast-top-full-width",
			"preventDuplicates": false,
			"onclick": null,
			"showDuration": "300",
			"hideDuration": "1000",
			"timeOut": "5000",
			"extendedTimeOut": "1000",
			"showEasing": "swing",
			"hideEasing": "linear",
			"showMethod": "fadeIn",
			"hideMethod": "fadeOut"
		}
		toastr["error"]("Los datos introducidos son incorrectos", "Aviso")
}

function autocomplete(){
	$(function() {	

		var availableTags = [
		"Lorem",
		"Ipsum",
		"fringilla",
		"Curabitur",
		"Integer",
		"Suspendisse",
		"Etiam",
		"Nullam",
		"Nam",
		"Sed",
		"Magna",
		"Finibus",
		"Bibendum",
		"hHndrerit",
		"Volutpat",
		"Vulputate",
		"Blandit",
		"Aenean",
		"Duis",
		"Maecenas",
		"Mauris",
		"Scelerisque"
		];
		function split( val ) {
			return val.split( /,\s*/ );
		}
		function extractLast( term ) {
			return split( term ).pop();
		}

		$( "#tags" )
      // don't navigate away from the field on tab when selecting an item
      .bind( "keydown", function( event ) {
      	if ( event.keyCode === $.ui.keyCode.TAB &&
      		$( this ).autocomplete( "instance" ).menu.active ) {
      		event.preventDefault();
      }
  })
      .autocomplete({
      	minLength: 0,
      	source: function( request, response ) {
          // delegate back to autocomplete, but extract the last term
          response( $.ui.autocomplete.filter(
          	availableTags, extractLast( request.term ) ) );
      },
      focus: function() {
          // prevent value inserted on focus
          return false;
      },
      select: function( event, ui ) {
      	var terms = split( this.value );
          // remove the current input
          terms.pop();
          // add the selected item
          terms.push( ui.item.value );
          // add placeholder to get the comma-and-space at the end
          terms.push( "" );
          this.value = terms.join( ", " );
          return false;
      }
  });
  });
}