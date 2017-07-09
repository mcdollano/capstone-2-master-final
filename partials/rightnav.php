<div>
	<?php 
		require_once 'library/script.php';
	?>	
	<div style="display: table; display: inline-block;">
		<h1>YOUR CART</h1>
		<a href="javascript:void(0)" class="closebtn2" onclick="closeNav2()">
				CLOSE WINDOW
		</a>
	</div>

	<div class="row">
		<div class="col-sm-6 col-md-6 col-lg-6">
			<?php
				require_once 'connection.php';
				$grandtotal = 0;
		
				foreach ($_SESSION['cart'] as $key => $value) {
					$sql = "SELECT * FROM items WHERE item_id = '$key'";

					$result = mysqli_query($conn,$sql);
					if (mysqli_num_rows($result)>0) {
						while ($row = mysqli_fetch_assoc($result)) {extract($row);}
						$quantity = $_SESSION['cart'][$item_id];
						echo " 
							<form method='POST'>
								<div class='row'>
									<div class='cart_container'>
										<div class='col-sm-4 col-md-4 col-lg-4'>
											<div class='cart_left'>
												<div class='cart_image_container'>
													<img src='$item_image'>
												</div>	
											</div>
										</div>	
										<div class='col-sm-8 col-md-8 col-lg-8'>
											<div class='cart_right'>
												<div class='cart_name_container'>
													$item_name
												</div>
												<div class='cart_description_container'>
													$item_description
												</div>	
												<div class='cart_quantity_container'>
													$value
												</div>	
												<div class='cart_subtotal_container'>
													" . ($quantity * $item_price) . "
												</div>	
											</div>
										</div>																		
									</div>
								</div>		
							</form>
							";
					}
					$grandtotal += $quantity * $item_price;
				}

				echo "GRAND TOTAL : " . $grandtotal . "<br><br>"; 
				
				if (isset($_POST['cancel_shopping'])) {
					unset($_SESSION['cart']);
				}
		
			foreach ($_SESSION['cart'] as $key => $value) {
				if (isset($_POST['check_out'])) {  	
					$product_key = $key;
					$order_quantity = $value;
					$user_id = $_SESSION['user_id'];


					$sql2 = "SELECT items FROM items WHERE item_id = $product_key";
					$result2 = mysqli_query($conn,$sql);
						if (mysqli_num_rows($result2)>0) {
							while ($row2 = mysqli_fetch_assoc($result2)) {
								extract($row2);

						  	}
						}

					if (($product_key !='')) 

						{
							if ($order_quantity != 0) {
								$sql3 = "INSERT INTO orders (item_id, order_quantity)
									VALUES ('$product_key','$order_quantity')";

									$result3 = mysqli_query($conn,$sql3);
									
									// echo "Purchase complete!";
									unset($_SESSION['cart']);
							}
						}	
				}
			}
			?>
			<form method="POST">
				<input type="submit" name="cancel_shopping" value="Cancel Shopping">
			
			</form>

			<form method="POST">
				<input type="button" onclick="open_check_out()" id="checkout" name="checkout" value="Open Check Out">
			</form>

			<form method="POST">
				<input type="submit" name="check_out" value="Check Out">
			</form>
		</div>


		<div class="col-sm-6 col-md-6 col-lg-6" id="hehe">
		<!-- <span>Email Address:</span><br>
		<span>Phone Number:</span><br> -->
		</div>
	</div> 
</div>