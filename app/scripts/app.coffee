'use strict'

angular.module('frontendWissenSystemApp', [
  'ngCookies'
  'ngSanitize'
  'pascalprecht.translate'
  'ui.bootstrap'
  'ui.router'
  'ui.select2'
  'chieffancypants.loadingBar'
  'ngCkeditor'
])

.constant('App', {
	Origin: 'http://olimpiadas.herokuapp.com/'
	API: 'api/'
	#Server: "#{App.Origin}#{App.API}" # No puedo hacer esto
	Server: 'http://olimpiadas.herokuapp.com/api/'
	views: 'views/'
})

.config(['$stateProvider', '$urlRouterProvider', '$translateProvider', '$translatePartialLoaderProvider', 'App', ($state, $urlRouter, $translate, $translatePartialLoader, App)->
	
	$urlRouter
		.otherwise('/')

	$state
	.state('main', {
		url: '/'
		views: 
			'principal':
				templateUrl: App.views+'/main.tpl.html'
				controller: 'MainCtrl'
	})
	.state('login', {
		url: '/login'
		views:
			'principal':
				templateUrl: "#{App.views}/login/login.tpl.html"
				controller: 'LoginCtrl'
	})
	.state('panel', {
		url: '/panel'
		views:
			'principal':
				templateUrl: "#{App.views}/panel/panel.tpl.html"
				controller: 'LoginCtrl'
	})

	@
	])


