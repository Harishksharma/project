$("#bsofa").on('change',function(e)
{
	var quantity=$("#bsofa").val();
	var price=$("#psofa").val();
	var dataString='quantity='+quantity+'&price='+price;
	$.ajax
	({
		type:'POST',
		url:'php/totalamount.php',
		data:dataString,
		cache:false,
		success:function(available)
		{
			$('#tsp').html(available);
		},
		error: function(xhr,xer){
			$('#userer').html('<span class="alert alert-danger">Some Error is Occur '+xhr.status+'</span>')
		}
	});		
});
$("#bchair").on('change',function(e)
{
	var quantity=$("#bchair").val();
	var price=$("#pchair").val();
	var dataString='quantity='+quantity+'&price='+price;
	$.ajax
	({
		type:'POST',
		url:'php/totalamount.php',
		data:dataString,
		cache:false,
		success:function(available)
		{
			$('#tcp').html(available);
		},
		error: function(xhr,xer){
			$('#userer').html('<span class="alert alert-danger">Some Error is Occur '+xhr.status+'</span>')
		}
	});		
});
$("#btable").on('change',function(e)
{
	var quantity=$("#btable").val();
	var price=$("#ptable").val();
	var dataString='quantity='+quantity+'&price='+price;
	$.ajax
	({
		type:'POST',
		url:'php/totalamount.php',
		data:dataString,
		cache:false,
		success:function(available)
		{
			$('#ttp').html(available);
		},
		error: function(xhr,xer){
			$('#userer').html('<span class="alert alert-danger">Some Error is Occur '+xhr.status+'</span>')
		}
	});		
});
$("#bfood").on('change',function(e)
{
	var name=$("#fooditem").val();
	var quantity=$("#bfood").val();
	var dataString='quantity='+quantity+'&name='+name;
	$.ajax
	({
		type:'POST',
		url:'php/totalfood.php',
		data:dataString,
		cache:false,
		success:function(available)
		{
			$('#tfp').html("Total Amount For Catering "+available);
		},
		error: function(xhr,xer){
			$('#userer').html('<span class="alert alert-danger">Some Error is Occur '+xhr.status+'</span>')
		}
	});		
});