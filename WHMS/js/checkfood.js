$("#fooditem").on('change',function(e)
{
	var name=$("#fooditem").val();
	var date=$("$bookdate").val();
	var dataString='name='+name+'&bookdate='+date;
	$.ajax
	({
		type:'POST',
		url:'php/checkfood.php',
		data:dataString,
		cache:false,
		success:function(available)
		{
			$('#show').html(available);
		},
		error: function(xhr,xer){
			$('#userer').html('<span class="alert alert-danger">Some Error is Occur '+xhr.status+'</span>')
		}
	});		
});