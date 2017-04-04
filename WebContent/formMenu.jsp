<%@ page language="java" contentType="text/html; charset=UTF8"
	pageEncoding="UTF-8"%>
<?xml version="1.0" encoding="UTF-8" ?>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Votre Menu</title>
</head>
<body>

	<div class="container jumbotron">
		<div class="row">
			<div class="col-xs-12">



				<div class="row form-control">
					<label for="entree">entrée</label>
				</div>

				<div class="row form-control ">
					<input type="text" class="formMenu" id="entree" />
				</div>

				<div class="row form-control">
					<label for="plat">plat</label>
				</div>

				<div class="row form-control ">
					<input type="text" class="formMenu" id="plat" />

					<div class="row form-control">
						<label for="plat">dessert</label>
					</div>

					<div class="row form-control ">
						<input type="text" class="formMenu" id="dessert" />

						<div class=" row col-xs-offset-9 col-xs-6">
							<a href="#" class="btn btn-success btn-lg col-xs-7" id="Order"> <span class="glyphicon glyphicon-shopping-cart"></span> Commander
							</a>
						</div>



					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- jQuery -->
	<script src="js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>

	<!-- COOKIE -->
	<script src="js/jquery.cookie.js"></script>

	<script>
		$(".formMenu").keypress(function(e) {

			if ((47 < e.which && e.which < 58)) {
				return false;
			}
		});

		$("#Order").click(function() {

			var entree = $("#entree").val()
			var plat = $("#plat").val()
			var dessert = $("#dessert").val()
			var menu = {
				"entree" : entree,
				"plat" : plat,
				"dessert" : dessert
			}

			$.post("menuServlet", {
				"menu" : menu
			})
		});
	</script>
</body>
</html>