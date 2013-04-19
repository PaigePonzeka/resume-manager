// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function(){
	if($('#screenshot').length > 0){
		updateScreenshot();
	}

	$('.screenshot-url').change(function(){updateScreenshot();});

});


function updateScreenshot(){
	var url = $('.screenshot-url').val();
	if(url){
		$('.screenshot-container img').attr('src', url);
	}
}