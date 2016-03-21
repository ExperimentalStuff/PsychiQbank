var ready = function(){
	$('button.showans').on("click",function(){
		$('.quiz').addClass("is_hidden");
		$('.answer').removeClass("is_hidden");
	});
}

$(document).ready(ready);
$(document).on('page:load',ready);