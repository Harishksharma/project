$("#floor").on('change',function(e)
{
	var date=$("#bookdate").val();
	var shift=$("#bookshift").val();
	var floor=$(this).val();
	var dataString='bookdate='+date+'&bookshift='+shift+'&floor='+floor;
	$.ajax
	({
		type:'POST',
		url:'jsp/checkdate.jsp',
		data:dataString,
		cache:false,
		success:function(available)
		{
			if(available=="false")
			{
				$('#usererr').html('<span class="alert alert-danger">Currently Booking is Not Available, Try Another Option</span>').fadeIn().delay(3000).fadeOut();
			}
			else
			{
				$('#usererr').html('<span class="alert alert-success">Booking is Available</span>').fadeIn().delay(3000).fadeOut();
			}
		},
		error: function(xhr,xer){
			$('#userer').html('<span class="alert alert-danger">Some Error is Occur '+xhr.status+'</span>')
		}
	});		
});
