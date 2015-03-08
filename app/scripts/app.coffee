'use strict'

###*
 # @ngdoc overview
 # @name elanceApp
 # @description
 # # elanceApp
 #
 # Main module of the application.
###
angular
.module 'elanceApp', [
  'ngAnimate',
  'ngCookies',
  'ngResource',
  'ngRoute',
  'ngSanitize',
  'ngTouch',
  'ui.tree',
  'xeditable'
]
.config ($routeProvider) ->
  $routeProvider
  .when '/',
    templateUrl: 'views/main.html'
    controller: 'MainCtrl'
  .when '/about',
    templateUrl: 'views/about.html'
    controller: 'AboutCtrl'
  .when '/tree',
    templateUrl: 'views/tree.html'
    controller: 'TreeCtrl'
  .otherwise
      redirectTo: '/'

