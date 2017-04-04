<?xml version="1.0" encoding="UTF-8" ?>

<jsp:root xmlns:jsp="http://java.sun.com/JSP/Page" version="2.0">
	<jsp:directive.page contentType="text/html; charset=ISO-8859-1"
		pageEncoding="ISO-8859-1" session="false" />
	<jsp:output doctype-root-element="html"
		doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN"
		doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"
		omit-xml-declaration="true" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Le menu selectionné</title>
</head>
<body>

	<div class="container jumbotron">
		<div class="row">
			<div class="col-xs-12">
					<p class="lead">Votre commande est terminé</p>
           			<p>L'entree : <c:out value="${entrees}"/></p>
            		<p>Le Plat : <c:out value="${plat}"/></p>
           			<p>Le Dessert : <c:out value="${desserts}"/></p>
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
				
			</script>
</body>
	</html>