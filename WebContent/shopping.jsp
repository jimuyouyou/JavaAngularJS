<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>items</title>
</head>
<script src='angular1.2.js'></script>
<body>
<pre>
<h1>AngularJS elements involved:</h1> 
1. Java/Jsp object conversion to Json Object
2. AngularJS ajax request and then display  
3. AngularJS form validation
4. AngularJS post - saving to database
5. AngularJS MVC
</pre>

	<div>
		<div ng-controller="ShoppingController">
			<h1>Products Lists</h1>
			<button ng-click="load()">Press to load products by ajax call</button>
			<table>
				<tr ng-repeat="item in items">
					<td>{{item.title}}</td>
					<td>{{item.description}}</td>
					<td>{{item.price | currency}}</td>
				</tr>
			</table>
		</div>

		<h1>Sign Up</h1>
		<form name='addUserForm' ng-controller="AddUserController">
			<div ng-show='message'>{{message}}</div>
			<table>
				<tr>
					<td>First name:</td>
					<td><input name='firstName' ng-model='user.first' required></td>
				</tr>
				<tr>
					<td>Last name:</td>
					<td><input ng-model='user.last' required>
					<td>
				</tr>
				<tr>
					<td>Email:</td>
					<td><input type='email' ng-model='user.email' required></td>
				</tr>
				<tr>
					<td>Age:</td>
					<td><input type='number' ng-model='user.age' ng-maxlength='3' ng-min='1'></td>
				</tr>
			</table>
			<button ng-click='addUser()' ng-disabled='!addUserForm.$valid'>Press to save to database</button>
		</form>
	</div>


	<script>
		function ShoppingController($scope, $http) {
			$scope.load = function() {
				$http.get('products.jsp').success(
						function(data, status, headers, config) {
							$scope.items = data;
						})
			};

		}

		function AddUserController($scope) {
			$scope.message = '';
			$scope.addUser = function() {
				// TODO for the reader: actually save user to database...
				$scope.message = 'Thanks, ' + $scope.user.first
						+ ', we added you!';
				alert('Saving to database, thanks!');
			};
		}
	</script>
</body>
</html>