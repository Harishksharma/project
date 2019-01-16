$("#floor").on('change',function(e)
{
	var total;
	var date=$("#bookdate").val();
	var shift=$("#bookshift").val();
	var floor=$(this).val();
	var dataString='bookdate='+date+'&bookshift='+shift+'&floor='+floor;
	$.ajax
	({
		type:'POST',
		url:'jsp/checkamount.jsp',
		data:dataString,
		cache:false,
		success:function(available)
		{
			$('#u1').html(available);
			total=available;
				
		},
		error: function(xhr,xer){
			$('#userer').html('<span class="alert alert-danger">Some Error is Occur '+xhr.status+'</span>')
		}
	});

$("#pamount").on('change',function(e)
	{
		var paid=$("#pamount").val();
		var balance=(total-paid);
		$('#u2').html(balance);
	});

});

