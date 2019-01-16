$(document).ready(function(){
	$("#create").on("click",function(){
		$("#right").load("create.jsp");
	});
});

$(document).ready(function(){
	$("#billgen").on("click",function(){
		$("#right").load("payment.jsp");
	});
});

$(document).ready(function(){
	$("#update").on("click",function(){
		$("#right").load("view.jsp");
	});
});

$(document).ready(function(){
	$("#reserved").on("click",function(){
		$("#right").load("booking.jsp");
	});
});

$(document).ready(function(){
	$("#deco").on("click",function(){
		$("#right").load("decoration.jsp");
	});
});

$(document).ready(function(){
	$("#food").on("click",function(){
		$("#right").load("catering.jsp");
	});
});

			