// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
console.log("rawr");
$(document).ready(function(){
	$('.screenshot').each(function(){
		var url = $(this).find('.screenshot-url').val();
		$(this).find('.screenshot-sample img').attr('src', url);
	});
});