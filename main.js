$(document).ready(function() {
		var height = Math.max($(".left").height(), $(".right").height());
		$(".left").height(height);
		$(".right").height(height);
});
$(document).ready(function() {
		var height = Math.max($(".left_blue").height(), $(".right_blue").height());
		$(".left_blue").height(height);
		$(".right_blue").height(height);
});
$(document).ready(function() {
		var fade_loop = $('#fade_loop');
        function fade_in_out() {
        	fade_loop.animate({opacity:'+=1'}, 300);
        	fade_loop.animate({opacity:'-=0.5'}, 300, fade_in_out);
        }
       fade_in_out();
});
function check()
{
	var username=document.forms["sign_up"]["username"].value;
	var firstname=document.forms["sign_up"]["firstname"].value;
	var lastname=document.forms["sign_up"]["lastname"].value;
	var dob=document.forms["sign_up"]["dob"].value;
	var address=document.forms["sign_up"]["address"].value;
	var postcode=document.forms["sign_up"]["postcode"].value;
	var mnumber=document.forms["sign_up"]["mnumber"].value;
	var hnumber=document.forms["sign_up"]["hnumber"].value;
	
	if(username==null || username==""){alert("Please enter your username.");return false;}
	if(firstname==null || firstname==""){alert("Please enter your first name.");return false;}
	if(lastname==null || lastname==""){alert("Please enter your last name.");return false;}
	if(dob==null || dob==""){alert("Please enter your date of birth.");return false;}
	if(address==null || address==""){alert("Please enter your address.");return false;}
	if(postcode==null || postcode==""){alert("Please enter your postcode.");return false;}
	if(mnumber==null || mnumber==""){alert("Please enter your mobile number.");return false;}
	if(hnumber==null || hnumber==""){alert("Please enter your home number.");return false;}
}
$(document).ready(function(){
	$("#rate").hover(function(){
	  $('.filler').hide();
	  $("#rate1").fadeIn().css("display","inline-block");
	  $("#rate2").fadeIn(1200).css("display","inline-block");
	  $("#rate3").fadeIn(1800).css("display","inline-block");
	  $("#rate4").fadeIn(2400).css("display","inline-block");
	  $("#rate5").fadeIn(3000).css("display","inline-block");
	});
});
$('.left').corner();
$('.right').corner();
$('#header').corner();
$('#footer').corner();
$('#rate').corner();
$('.rating').corner();
$('.keep_ratio').corner();
