// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function(){
	$('.screenshot').each(function(){
		var url = $(this).find('.screenshot-url').val();
		$(this).find('.screenshot-sample img').attr('src', url);
	});
	$(".chzn-select").chosen();

	var icon = $('.url-icon').val();
	if(icon){
		$('.container-icon img').attr('src', icon);
	}
});