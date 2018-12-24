$(document).ready(function()
{
	$("#allinfo").submit(function(event)
	{
		event.preventDefault(); 
		$.ajax
		({
			type: "POST",
			url: "php/checkstore.php",
			data: new FormData(this),
			contentType: false,
			cache: false,
			processData:false,
			success: function(result)
			{
				$('#info').html('<div class="alert alert-info">Booking Successfull,Customer ID '+result+'</div>').fadeIn();					
			}
			});
		return false;
	});
});