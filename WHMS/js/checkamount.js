$("#cid").on('change',function(e)
{
	var cid=$("#cid").val();
	var dataString='cid='+cid;
	$.ajax
	({
		type:'POST',
		url:'php/checkamount.php',
		data:dataString,
		cache:false,
		success:function(available)
		{
			$('#u1').html(available);
		},
		error: function(xhr,xer){
			$('#userer').html('<span class="alert alert-danger">Some Error is Occur '+xhr.status+'</span>')
		}
	});		
});
$("#pamount").on('change',function(e)
{
	var cid=$("#cid").val();
	var paid=$(this).val();
	var dataString='cid='+cid+'&paid='+paid;
	$.ajax
	({
		type:'POST',
		url:'php/checkbalance.php',
		data:dataString,
		cache:false,
		success:function(available)
		{
			$('#u2').html(available);
		},
		error: function(xhr,xer){
			$('#userer').html('<span class="alert alert-danger">Some Error is Occur '+xhr.status+'</span>')
		}
	});		
});
