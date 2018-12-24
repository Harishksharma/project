$(document).ready(function()
{
	$("#sign").submit(function(event)
	{
		event.preventDefault(); 
		$.ajax
		({
			type: "POST",
			url: "php/checkdate.php",
			data: new FormData(this),
			contentType: false,
			cache: false,
			processData:false,
			success: function(result){
				if(result=="false")
				{					
					$('#usererr').html('<div class="alert alert-danger">This Slot is Already Booked,Try Another Slot.</div>').fadeIn().delay(3000).fadeOut();
				}
				else
				{
					$('#usererr').html('<div class="alert alert-success">Booking is Available</div>').fadeIn().delay(3000).fadeOut();
					
				}
			}
			});
		return false;
	});
});