<?xml version="1.0" encoding="UTF-8" ?>
<jsp:root xmlns:jsp="http://java.sun.com/JSP/Page" version="2.0">
	<jsp:directive.page contentType="text/html; charset=ISO-8859-1"
		pageEncoding="ISO-8859-1" session="false" />
	<jsp:output doctype-root-element="html"
		doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN"
		doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"
		omit-xml-declaration="true" />
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
							<a href="#" class="btn btn-success btn-lg col-xs-7" id="Order">
								<span class="glyphicon glyphicon-shopping-cart"></span>
								Commander
							</a>
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
					var menu = {"entree" : entree,"plat" : plat,"dessert" : dessert}

					

					$.post("menuServlet", {"menu" : menu }) 
					});
			</script>
</body>
	</html>