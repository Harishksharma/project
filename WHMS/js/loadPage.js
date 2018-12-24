$(document).ready(function(){
	$("#create").on("click",function(){
		$("#right").load("create.php");
	});
});

$(document).ready(function(){
	$("#payment").on("click",function(){
		$("#right").load("payment.php");
	});
});
$(document).ready(function(){
	$("#billgen").on("click",function(){
		$("#right").load("bill.php");
	});
});

$(document).ready(function(){
	$("#update").on("click",function(){
		$("#right").load("update.php");
	});
});

$(document).ready(function(){
	$("#reserved").on("click",function(){
		$("#right").load("booking.php");
	});
});

$(document).ready(function(){
	$("#deco").on("click",function(){
		$("#right").load("decoration.php");
	});
});

$(document).ready(function(){
	$("#food").on("click",function(){
		$("#right").load("catering.php");
	});
});

			