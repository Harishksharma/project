$(document).ready(function()
{
	$("#billing").submit(function(event)
	{
		event.preventDefault(); 
		$.ajax
		({
			type: "POST",
			url: "php/checkbill.php",
			data: new FormData(this),
			contentType: false,
			cache: false,
			processData:false,
			success: function(result)
			{
				$('#billing').show();
			}
			});
		return false;
	});
});