$(document).ready(function()
{
	$("#allinfo").submit(function(event)
	{
		event.preventDefault(); 
		$.ajax
		({
			type: "POST",
			url: "jsp/checkstore.jsp",
			data: $("#allinfo").serialize(),
			cache: false,
			success: function(result){
				if(result=="true")
				{					
					$('#info').html('<div class="alert alert-success-danger">Booking Not Successfull</div>').fadeIn().delay(3000).fadeOut();
				}
				else
				{
					$('#info').html('<div class="alert alert-success">Booking Successfull</div>').fadeIn().delay(3000).fadeOut();
					
				}
			}
			});
		return false;
	});
});