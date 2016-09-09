<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CATEGORY MODULE</title>

<style type="text/css">
h1 {
	color: pink; <!--
	text-shadow: 1px 1px 2px black, 0 0 25px blue, 0 0 5px darkblue; -->
	text-align: center;
	font-size: 40px;
}

table {
	border-collapse: collapse;
	width: 100%;
}

th, td {
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #FFDAB9
}

th {
	background-color: #DC143C;
	color: white;
}
</style>
<script
	src="//ajax.googleapis.com/ajax/libs/angularjs/1.2.17/angular.min.js"></script>
<script>
	var app = angular.module('myApp', []);
	function MyController($scope, $http) {
		$scope.sortType = 'name'; // set the default sort type
		$scope.sortReverse = false; // set the default sort order
		$scope.search = '';
		$scope.getDataFromServer = function() {
			$http({
				method : 'GET',
				url : 'categorygson'
			}).success(function(data, status, headers, config) {
				$scope.categories = data;// alert(data); 
			}).error(function(data, status, headers, config) {
			});
		};
	};
</script>

</head>
<body>
	<h1>CATEGORY MODULE</h1>


	<!--  <li class="active" ><a href="perform_logout"
			class="w3-hover-none"><span class="glyphicon glyphicon-log-out">Sign Out</span></a></li>-->
	<c:url var="addAction" value="addcategory"></c:url>

	<form:form action="${addAction}" commandName="category">
		<table border="1" cellpadding="10" cellspacing="10" align="center">
			<thead>
				<tr>
					<!--  <td><form:label path="id">
						<spring:message text="ID" />
					</form:label></td>-->
					<c:choose>
						<c:when test="${!empty category.id}">
							<!--  	<td><form:input path="id" disabled="true" readonly="true" />
						</td>-->
						</c:when>

						<c:otherwise>
							<td><form:input path="id" pattern="{3,10}" required="true"
									title="id should contains 3 to 10 characters" /></td>
						</c:otherwise>
					</c:choose>
				<tr>

					<td><form:label path="name">
							<spring:message text="Name" />
						</form:label></td>
					<td><form:input path="name" required="true" /></td>
				</tr>
				<tr>
					<td><form:label path="description">
							<spring:message text="description" />
						</form:label></td>
					<td><form:input path="description" required="true" /></td>
				</tr>
				<tr>
					<td colspan="2"><c:if test="${!empty category.name}">
							<input type="submit"
								value="<spring:message text="Edit category"/>" />
						</c:if> <c:if test="${empty category.name}">
							<input type="submit"
								value="<spring:message text="Add category"/>" />
						</c:if></td>
				</tr>
		</table>
	</form:form>
	<br>

	<c:when test="${!EditCategory}">
		<h1>CategoryList</h1>
		<div class="container" data-ng-app="myApp"
			data-ng-controller="MyController" data-ng-init="getDataFromServer()">
			<form>
				<input data-ng-model="search" type="text"
					placeholder=" Search Category" style="width: 20%">
				<table class="table table-bordered table-striped">
					<thead>
						<tr>
							<br>
							<th>category ID</th>
							<th>category Name</th>
							<th>category Description</th>
							<th>Edit</th>
							<th>Delete</th>
						</tr>
					</thead>
					<tbody>
						<tr
							data-ng-repeat="category in categories | orderBy:sortType:sortReverse | filter:search">
							<td>{{category.id}}</td>
							<td>{{category.name}}</td>
							<td>{{category.description}}</td>
							<td>
								<form action="editcategory/${category.id}" method="post">
									<input type="submit" class="w3-btn w3-black"
										class="w3-btn w3-black" value="Edit">
								</form>
							</td>
							<td><form action="removecategory/${category.id}">
									<input type="submit" class="w3-btn w3-black" value="Delete">
								</form></td>
						</tr>
					</tbody>
				</table>
		</div>
	</c:when>





</body>
</html>