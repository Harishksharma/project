//Appending Show Button In Password Field
$(document).ready(function()
{
	$('.pass_show').append('<span class="ptxt">Show</span>');  
});

//Toggling Button Function for show hide
$(document).on('click','.pass_show .ptxt', function()
{ 
	$(this).text($(this).text() == "Show" ? "Hide" : "Show"); 
	$(this).prev().attr('type', function(index, attr){return attr == 'password' ? 'text' : 'password'; }); 
});  


//For Scrolling
$(function(){
    $('a[href*="#"]:not([href="#"])').click(function(){
        if(location.pathname.replace(/^\//,'')== this.pathname.replace(/^\//,'') && location.hostname == this.hostname)
        {
            var target = $(this.hash);
            target= target.length ? target : $('[name=' +this.hash.slice(3)+']');
            if(target.length){
                $('html , body').animate({
                    scrollTop :target.offset().top
                },1000);
                return false;
            }
        }
    });
});

//Printing Bills
function printData()
{
   var divToPrint=document.getElementById("bills");
   newWin= window.open("");
   newWin.document.write(divToPrint.outerHTML);
   newWin.print();
   newWin.close();
}
$('#print').on('click',function()
{
  printData();
});

function toggleside() 
      {
        document.getElementById('side').classList.toggle('active');
      }