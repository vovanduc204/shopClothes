/**
 *04/17/2020
 */
$(document).ready(function(){
//	$("#click").click(function(){
//		alert("Clicked");
//		$(this).addClass("actived");
//	});
	/**
	 *04/24/2020
	 */
//	$("#btnLogin").click(function(){
//		var email=$("#email").val();
//		var password=$("#password").val();
//		$.ajax({
//			url:"/minishop/api/CheckLogin",
//			type:"GET",
//			data:{
//				email:email,
//				password:password
//			},
//			success:function(value){
////				alert(value);
//				if(value=="true"){
//					urlCurrent=window.location.href;
//					url=urlCurrent.replace("login/","");
//					window.location=url;
//				}else{
//					$("#result").text("Failed !");
//				}
//			}
//		})
//	});
	
//	$("#login").click(function(){
//		$(this).addClass("actived");
//		$("#register").removeClass("actived");
//		$(".container-login-form").show();
//		$(".container-signup-form").hide();
//	});
//	$("#register").click(function(){
//		$(this).addClass("actived");
//		$("#login").removeClass("actived");
//		$(".container-signup-form").show();
//		$(".container-login-form").hide();
//	});
	$(".btnaddtocart").click(function(){
		
		var idproductdetail=$(this).attr("data-productdetail");
		
		var idproductcolor=$(this).closest("tr").find(".productcolor").attr("data-idcolor");
		var colorname=$(this).closest("tr").find(".productcolor").text();
		var idproductsize=$(this).closest("tr").find(".productsize").attr("data-idsize");
		var sizename=$(this).closest("tr").find(".productsize").text();
		var amount=$(this).closest("tr").find(".productamount").text();
		var idproduct=$("#productnamedettail").attr("data-idproductdetail");
		var productname=$("#productnamedettail").text();
		var price=$("#productpricedetail").attr("data-pricedetail");
		//30/4/2020
		$.ajax({
			url:"/minishop/api/AddCart",
			type:"GET",
			data:{
				idproduct:idproduct,
				idproductcolor:idproductcolor,
				idproductsize:idproductsize,
				productname:productname,
				price:price,
				colorname:colorname,
				sizename:sizename,
				amount:amount,
				idproductdetail:idproductdetail
			},
			success:function(value){
				$("#cardamount").find("div").addClass("carcircle");
				$("#cardamount").find("div").html("<span>"+value+"</span>");
				location.reload();
			}
		})
//		.done(function(){
//			$.ajax({
//				url:"/minishop/api/GetCardAmount",
//				type:"GET",
//				success:function(value){				
//					$("#cardamount").find("div").addClass("carcircle");
//					$("#cardamount").find("div").html("<span>"+value+"</span>");
//				}
//			})
//		});
	});
	
	SumPrice();
	function SumPrice(isEventChange) {
		var sumprice=0;
		$(".price-cart").each(function() {
			
			var price=$(this).text();
			
			var amount=$(this).closest("tr").find(".amount-cart").val();
			
			var sum=parseFloat(price)*amount;
			
			var format=parseFloat(sum).toString().replace(/(\d)(?=(\d{3})+\.)/g, "$1.");
			
				
			if (!isEventChange) {
				$(this).html(format);
			}
			sumprice= sumprice + sum;
			
			var formatSum=sumprice.toString().replace(/(\d)(?=(\d{3})+\.)/g, "$1.");
			$("#sumprice").html("$ "+formatSum);
		});
	}
	function SumPricece() {
		var sumpricece=0;
		$(".price-cart").each(function() {
			
			var price=$(this).closest("tr").find(".price-cart").attr("data-value");
//			alert(price);
			var amount=$(this).closest("tr").find(".amount-cart").val();
//			alert(amount);
			var sum=parseFloat(price)*amount;
//			alert(sum);
			sumpricece= sumpricece + sum;
//			alert(sumpricece);
			$("#sumprice").html("$ " +sumpricece);
		});
	}
	
	
	$(".amount-cart").change(function(){
		
		var amount=$(this).val();
		
		var price = $(this).closest("tr").find(".price-cart").attr("data-value");
		
		var sumchange = amount*parseFloat(price);
		
		var format=sumchange.toString().replace(/(\d)(?=(\d{3})+\.)/g, "$1.");
		
		$(this).closest("tr").find(".price-cart").html(format);
		
		SumPricece();
		
		
		var idproductcolor=$(this).closest("tr").find(".productcolor").attr("data-idcolor");
		
		var idproductsize=$(this).closest("tr").find(".productsize").attr("data-idsize");
		
		var idproduct=$(this).closest("tr").find(".nameproduct-cart").attr("data-idproductcart");
		
		$.ajax({
			url:"/minishop/api/UpdateCart",
			type:"GET",
			data:{
				idproduct:idproduct,
				idproductcolor:idproductcolor,
				idproductsize:idproductsize,
				amount:amount
			},
			success:function(value){
				
			}
		})
	});
	
//	$(".amount-cart").blur(function(){
//		
//		var amount=$(this).val();
//		
//		var idproductcolor=$(this).closest("tr").find(".productcolor").attr("data-idcolor");
//		
//		var idproductsize=$(this).closest("tr").find(".productsize").attr("data-idsize");
//		
//		var idproduct=$(this).closest("tr").find(".nameproduct-cart").attr("data-idproductcart");
//		
//		$.ajax({
//			url:"/minishop/api/UpdateCart",
//			type:"GET",
//			data:{
//				idproduct:idproduct,
//				idproductcolor:idproductcolor,
//				idproductsize:idproductsize,
//				amount:amount
//			},
//			success:function(value){
//				
//			}
//		})
//	});
	
	$(".btnDeleteCart").click(function(){
		var self=$(this);
		
		var idproductcolor=$(this).closest("tr").find(".productcolor").attr("data-idcolor");
		
		var idproductsize=$(this).closest("tr").find(".productsize").attr("data-idsize");
		
		var idproduct=$(this).closest("tr").find(".nameproduct-cart").attr("data-idproductcart");
		$.ajax({
			url:"/minishop/api/DeleteCart",
			type:"GET",
			data:{
				idproduct:idproduct,
				idproductcolor:idproductcolor,
				idproductsize:idproductsize
				
			},
			success:function(value){
				self.closest("tr").remove();
				SumPricece();
				location.reload();
			}
		})
	});
	
	$(".menu_Active li a").click(function(e) {
		$('.menu_Active li.active').removeClass('active');
        var $parent = $(this).parent();
        $parent.addClass('active');
    });
	
	
	
});