<script type="text/javascript"> 
		// -------------- LEFT SIDE BAR -------------//	

	//sidebar nav
	function openNav() {
		document.getElementById('mySidenav').style.width = "200px";
		document.getElementById("navbtn").style.visibility = "hidden";
		document.getElementById("body").style.marginLeft = "200px";
		document.getElementById("login").style.visibility = "hidden";
		document.getElementById("add_new").style.visibility = "hidden";
		document.getElementById("logout").style.visibility = "hidden";
	}
	function closeNav() {
		// document.getElementById("displayname").style.marginLeft = "15%";
		document.getElementById("mySidenav").style.width = "0";
		document.getElementById("navbtn").style.visibility = "visible";
		document.getElementById("body").style.marginLeft = "0";
		document.getElementById("login").style.visibility = "visible";
		document.getElementById("add_new").style.visibility = "visible";
		document.getElementById("login").style.visibility = "visible";
		document.getElementById("logout").style.visibility = "visible";		
	}

		// -------------- END OF LEFT SIDE BAR -------------//	

		// -------------- RIGHT SIDE BAR -------------//

		function openNav2() {
		document.getElementById('mySidenav2').style.width = "300px";
		document.getElementById("navbtn").style.visibility = "hidden";
		document.getElementById("body").style.marginRight = "320px";
		document.getElementById("login").style.visibility = "hidden";
		document.getElementById("add_new").style.visibility = "hidden";
		document.getElementById("logout").style.visibility = "hidden";
	}

		function closeNav2() {
		// document.getElementById("displayname").style.marginLeft = "15%";
		document.getElementById("mySidenav2").style.width = "0";
		document.getElementById("navbtn").style.visibility = "visible";
		document.getElementById("body").style.marginRight = "0";
		document.getElementById("login").style.visibility = "visible";
		document.getElementById("add_new").style.visibility = "visible";
		// document.getElementById("login").style.visibility = "visible";
		document.getElementById("logout").style.visibility = "visible";		
	}


		// -------------- END OF RIGHT SIDE BAR -------------//

		// -------------- CHECK OUT  -------------//

		function open_check_out() {

		document.getElementById('mySidenav2').style.width = "100vw";
		document.getElementById("navbtn").style.visibility = "hidden";
		document.getElementById("body").style.marginRight = "100vw";
		// document.getElementById("hehe").style.visibility = "hidden";
		// document.getElementById("login").style.visibility = "hidden";
		// document.getElementById("add_new").style.visibility = "hidden";
		// document.getElementById("logout").style.visibility = "hidden";
	}
		// -------------- END OF CHECK OUT  -------------//

		// ************** SHOW CART ********************* //

		function showcart() {
			document.getElementById('addtocart_container').style.visibility = "visible";
			document.getElementById('showcartBtn').style.visibility = 'hidden';
			document.getElementById('cancelcartBtn').style.visibility = 'visible';
		}

		// *********** END OF SHOW CART ************** // 

		// ************** HIDE CART ********************* //

		function hidecart() {
			document.getElementById('addtocart_container').style.visibility = "hidden";
			document.getElementById('cancelcartBtn').style.visibility = "hidden";
			document.getElementById('showcartBtn').style.visibility = 'visible';
		}

		// *********** END OF HIDE CART ************** // 





	//log in / log out button

	function hide_login() {
    	document.getElementById("login").style.visibility = "hidden";
	}

	
$(document).ready(function(){
	$("#hide").click(function(){
		// $(".show_item").show();
		$(".upload_item").show();
		$(".edit_save").show();
		// $(".edit-btn").hide();
		$("#cancel_edit").show();
		// $("#item_hide").hide();
	});

});

$(document).ready(function(){
	$("#cancel_edit").click(function(){
		$(".show_item").hide();
		$(".upload_item").hide();
		$(".edit_save").hide();
		$(".edit-btn").show();
		$("#cancel_edit").hide();
	});
});

	function getSubtotal(){
		var price = document.getElementById("item_price_js").innerHTML;
		var quantity = document.getElementById("item_quantity_js").value;
		var getSub = document.getElementById("getSub");	
		getSub.value = parseInt(quantity) * parseInt(price);	
	}

</script>



