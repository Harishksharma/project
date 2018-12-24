$(document).ready(function()
{
	$("#payinfo").submit(function(event)
	{
		event.preventDefault(); 
		$.ajax
		({
			type: "POST",
			url: "php/checkpay.php",
			data: new FormData(this),
			contentType: false,
			cache: false,
			processData:false,
			success: function(result)
			{
				$('#info').html('<div class="alert alert-info">Payment Successfull,Go For Bill Customer ID '+result+'</div>').fadeIn();					
			}
			});
		return false;
	});
});