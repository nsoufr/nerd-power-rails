var socialNerd = angular.module('socialNerd', ['ngRoute'])
socialNerd.config(function ($routeProvider) {
	$routeProvider
		.when('/', {
	    templateUrl: '/user',
	    controller: 'UserController'
	 	})
});
