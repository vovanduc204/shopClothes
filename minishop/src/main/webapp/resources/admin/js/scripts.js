(function($) {
    "use strict";

    /* 
    ------------------------------------------------
    Sidebar open close animated humberger icon
    ------------------------------------------------*/

    $(".hamburger").on('click', function() {
        $(this).toggleClass("is-active");
    });


//	$(".page-item").removeClass("active");
//	$(this).addClass("active");
    
    
    
    
    
//ADMIN
    $("body").on("click",".page-item",function(){
    	$(".page-item").removeClass("active");
    	$(this).addClass("active");
		var pagenumber = $(this).text();
		var start=(pagenumber-1)*5;
		
		$.ajax({
			url:"/minishop/api/GetProductLimit",
			type:"GET",
			data:{
				start:start,
			},
			success:function(value){
				var tbodyproduct=$("#table-product").find("tbody");
				tbodyproduct.empty();
				tbodyproduct.append(value);
			}
		})
		
	});
   
    
    $("#checkall").change( function(){
    	 if(this.checked) {
    		 $("#table-product tbody input").each(function() {
    	    	   $(this).attr("checked",true);
    	    	  
    	    	});
    	  } else {
    	    	 $("#table-product tbody input").each(function() {
      	    	   $(this).attr("checked",false);
      	    	
      	    	});
    	  }
    	});
    
    $("#deleteallproduct").click( function() {
    	$("#table-product tbody input:checked").each(function() {
    	  var idproduct=($(this).val());
    	  var This=$(this);
    	  
    	  $.ajax({
  			url:"/minishop/api/CheckAllDeleteProduct",
  			type:"GET",
  			data:{
  				idproduct:idproduct,
  			},
  			success:function(value){
  				This.closest("tr").remove();
  			}
  		})
    	});
    });
    
    var files=[];
    var imagename="";
    $("#product_image").change(function(event){
    	
    	files=event.target.files;
    	imagename = files[0].name;
    	var forms= new FormData();
    	forms.append("file",files[0]);
//    	alert(forms);
  	  $.ajax({
			url:"/minishop/api/UploadFile",
			type:"POST",
			data: forms,
			contentType:false,
			processData:false,
			enctype:"multipart/form-data",
			success:function(value){
				
			}
		})
    });
    

    $("body").on("click",".btnclone",function(){
    	
    	$(this).remove();
    	var clone = $("#product_detail").clone().removeAttr("id");
    	
    	$("#container-detail-product").append(clone);
		
	});
    
    
    $("body").on("click",".remove-clone",function(){
    	 $(this).closest(".product_detail_clone").hide();
    	 $(this).closest(".product_detail_clone").find(".btnclone").show();
     	
//     		$(this).closest("#product_detail").find(".btnclone").show();
 		
//    	 $(this).closest(".product_detail_clone").find(".btnclone").show();
	});
    
    
    $("#add_new_product").click( function(event) {
    	event.preventDefault();
    	var formdata= $("#form_product").serializeArray();
    	var json={};
    	var arraydetail=[];
    	
    	 $.each(formdata, function(i, field){   		
    			 json[field.name]= field.value;
    	 });
    	 
    	 
    	 $("#container-detail-product > .add_product_detail").each(function(){
    		 var objectdetail={};
    		 var productcolor = $(this).find('select[name="productcolor"]').val();
    		 var productsize = $(this).find('select[name="productsize"]').val();
    		 var amount = $(this).find('input[name="amount"]').val();
    		 
    		 objectdetail["productcolor"]=productcolor;
    		 objectdetail["productsize"]=productsize;
    		 objectdetail["amount"]=amount;
    		 
    		 arraydetail.push(objectdetail);
//    		 console.log("color : "+colorproduct+ " size : "+ sizeproduct+ "amount : "+ amount);
    	 });
    	 
    	 json["listproductdetail"]=arraydetail;
    	 json["productimg"]=imagename;
    	 
//    	 console.log(json);
//    	 console.log(arraydetail);
    	 
//    	 console.log(JSON.stringify(json));
    	 $.ajax({
 			url:"/minishop/api/AddProduct",
 			type:"POST",
 			data: {
 				dataJson : JSON.stringify(json)
 			},
 			success:function(value){
 				 
 			}
 		})
    });
    
    
    $("body").on("click",".updateproduct",function(){
    	
    	$("#update_old_product").removeClass("hidden");
    	$("#out_product").removeClass("hidden");
    	$("#add_new_product").addClass("hidden");
    	
    	 var idproduct = $(this).attr("data-id");
//    	 alert(idproduct);
    	 $.ajax({
  			url:"/minishop/api/GetListProductFromId",
  			type:"POST",
  			data: {
  				idproduct : idproduct
  			},
  			success:function(value){
//  				console.log(value);
  				$("#productname").val(value.productname);
  				$("#price").val(value.price);
  				$("#description").val(value.description);
  				$('#update_old_product').attr('data-update',value.idproduct);
  				if (value.sex=="Nữ") {
  					$("#rd-female").prop("checked",true);
				}else{
					$("#rd-male").prop("checked",true);
				}
  				$("#category").val(value.category.idcategory);
  				
  				$("#container-detail-product").empty();
  				
  				
  				var counter=value.listproductdetail.length;
  				
  				for (var i = 0; i < counter; i++) {
  					var clone = $("#product_detail").clone().removeAttr("id");
  					if (i<counter-1) {
  						clone.find(".btnclone").remove();
					}
  					
  	  				clone.find("#productcolor").val(value.listproductdetail[i].productcolor.idproductcolor);
  	  				clone.find("#productsize").val(value.listproductdetail[i].productsize.idproductsize);
  	  				clone.find("#amount").val(value.listproductdetail[i].amount);
  	  				
  	  				$("#container-detail-product").append(clone);
  	  				
				}
  				
  				
  			}
  		})
	});
    
    $("#update_old_product").click( function(event) {
    	event.preventDefault();
    	var formdata= $("#form_product").serializeArray();
    	var json={};
    	var arraydetail=[];
    	var idproduct = $(this).attr("data-update");
    	
    	 $.each(formdata, function(i, field){   		
    			 json[field.name]= field.value;
    	 });
    	 
    	 
    	 $("#container-detail-product > .add_product_detail").each(function(){
    		 var objectdetail={};
    		 var productcolor = $(this).find('select[name="productcolor"]').val();
    		 var productsize = $(this).find('select[name="productsize"]').val();
    		 var amount = $(this).find('input[name="amount"]').val();
    		 
    		 objectdetail["productcolor"]=productcolor;
    		 objectdetail["productsize"]=productsize;
    		 objectdetail["amount"]=amount;
    		 
    		 arraydetail.push(objectdetail);
    	 });
    	 json["idproduct"]=idproduct;
    	 json["listproductdetail"]=arraydetail;
    	 json["productimg"]=imagename;
    	 console.log(json);
    	 $.ajax({
 			url:"/minishop/api/UpdateProduct",
 			type:"POST",
 			data: {
 				dataJson : JSON.stringify(json)
 			},
 			success:function(value){
 				 
 			}
 		})
    });
    
    
    //End ADMIN 
    
    
    
    
    
    
    /*  
    -------------------
    List item active
    -------------------*/
    $('.header li, .sidebar li').on('click', function() {
        $(".header li.active, .sidebar li.active").removeClass("active");
        $(this).addClass('active');
    });

    $(".header li").on("click", function(event) {
        event.stopPropagation();
    });

    $(document).on("click", function() {
        $(".header li").removeClass("active");

    });



    /*  
    -----------------
    Chat Sidebar
    ---------------------*/


    var open = false;

    var openSidebar = function() {
        $('.chat-sidebar').addClass('is-active');
        $('.chat-sidebar-icon').addClass('is-active');
        open = true;
    }
    var closeSidebar = function() {
        $('.chat-sidebar').removeClass('is-active');
        $('.chat-sidebar-icon').removeClass('is-active');
        open = false;
    }

    $('.chat-sidebar-icon').on('click', function(event) {
        event.stopPropagation();
        var toggle = open ? closeSidebar : openSidebar;
        toggle();
    });








    /*  Auto date in footer and refresh
    --------------------------------------*/

//    document.getElementById("date-time").innerHTML = Date();
//
//    $('.page-refresh').on("click", function() {
//        location.reload();
//    });


    /* TO DO LIST 
    --------------------*/
    $(".tdl-new").on('keypress', function(e) {
        var code = (e.keyCode ? e.keyCode : e.which);
        if (code == 13) {
            var v = $(this).val();
            var s = v.replace(/ +?/g, '');
            if (s == "") {
                return false;
            } else {
                $(".tdl-content ul").append("<li><label><input type='checkbox'><i></i><span>" + v + "</span><a href='#' class='ti-close'></a></label></li>");
                $(this).val("");
            }
        }
    });


    $(".tdl-content a").on("click", function() {
        var _li = $(this).parent().parent("li");
        _li.addClass("remove").stop().delay(100).slideUp("fast", function() {
            _li.remove();
        });
        return false;
    });

    // for dynamically created a tags
    $(".tdl-content").on('click', "a", function() {
        var _li = $(this).parent().parent("li");
        _li.addClass("remove").stop().delay(100).slideUp("fast", function() {
            _li.remove();
        });
        return false;
    });



    /*  Chat Sidebar User custom Search
    ---------------------------------------*/

    $('[data-search]').on('keyup', function() {
        var searchVal = $(this).val();
        var filterItems = $('[data-filter-item]');

        if (searchVal != '') {
            filterItems.addClass('hidden');
            $('[data-filter-item][data-filter-name*="' + searchVal.toLowerCase() + '"]').removeClass('hidden');
        } else {
            filterItems.removeClass('hidden');
        }
    });


    /*  Chackbox all
    ---------------------------------------*/

    $("#checkAll").change(function() {
        $("input:checkbox").prop('checked', $(this).prop("checked"));
    });


    /*  Vertical Carousel
    ---------------------------*/

    $('#verticalCarousel').carousel({
        interval: 2000
    })

    $(window).bind("resize", function() {
//        console.log($(this).width())
        if ($(this).width() < 680) {
            $('.logo').addClass('hidden')
            $('.sidebar').removeClass('sidebar-shrink')
            $('.sidebar').removeClass('sidebar-shrink, sidebar-gestures')
        }
    }).trigger('resize');



    /*  Search
    ------------*/
    $('a[href="#search"]').on('click', function(event) {
                event.preventDefault();
                $('#search').addClass('open');
                $('#search > form > input[type="search"]').focus();
            });
            
            $('#search, #search button.close').on('click keyup', function(event) {
                if (event.target == this || event.target.className == 'close' || event.keyCode == 27) {
                    $(this).removeClass('open');
                }
            });
            
            
            //Do not include! This prevents the form from submitting for DEMO purposes only!
            $('form').submit(function(event) {
                event.preventDefault();
                return false;
            })

    

    /*  pace Loader
    -------------*/

//    paceOptions = {
//        elements: true
//    };

            




})(jQuery);