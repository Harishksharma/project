$("#btable").on('change',function(e)
{
	var aquantity=$("#bsofa").val();
	var aprice=$("#psofa").val();
	var bquantity=$("#bchair").val();
	var bprice=$("#pchair").val();
	var cquantity=$("#btable").val();
	var cprice=$("#ptable").val();

	var dataString='aquantity='+aquantity+'&aprice='+aprice+'&bquantity='+bquantity+'&bprice='+bprice+'&cquantity='+cquantity+'&cprice='+cprice;
	$.ajax
	({
		type:'POST',
		url:'php/totaldeco.php',
		data:dataString,
		cache:false,
		success:function(available)
		{
			$('#totaldeco').html("Total Amount For Decoration "+available);
		},
		error: function(xhr,xer){
			$('#userer').html('<span class="alert alert-danger">Some Error is Occur '+xhr.status+'</span>')
		}
	});		
});
$("#bchair").on('change',function(e)
{
	var aquantity=$("#bsofa").val();
	var aprice=$("#psofa").val();
	var bquantity=$("#bchair").val();
	var bprice=$("#pchair").val();
	var cquantity=$("#btable").val();
	var cprice=$("#ptable").val();

	var dataString='aquantity='+aquantity+'&aprice='+aprice+'&bquantity='+bquantity+'&bprice='+bprice+'&cquantity='+cquantity+'&cprice='+cprice;
	$.ajax
	({
		type:'POST',
		url:'php/totaldeco.php',
		data:dataString,
		cache:false,
		success:function(available)
		{
			$('#totaldeco').html("Total Amount For Decoration "+available);
		},
		error: function(xhr,xer){
			$('#userer').html('<span class="alert alert-danger">Some Error is Occur '+xhr.status+'</span>')
		}
	});		
});
$("#bsofa").on('change',function(e)
{
	var aquantity=$("#bsofa").val();
	var aprice=$("#psofa").val();
	var bquantity=$("#bchair").val();
	var bprice=$("#pchair").val();
	var cquantity=$("#btable").val();
	var cprice=$("#ptable").val();

	var dataString='aquantity='+aquantity+'&aprice='+aprice+'&bquantity='+bquantity+'&bprice='+bprice+'&cquantity='+cquantity+'&cprice='+cprice;
	$.ajax
	({
		type:'POST',
		url:'php/totaldeco.php',
		data:dataString,
		cache:false,
		success:function(available)
		{
			$('#totaldeco').html("Total Amount For Decoration "+available);
		},
		error: function(xhr,xer){
			$('#userer').html('<span class="alert alert-danger">Some Error is Occur '+xhr.status+'</span>')
		}
	});		
});