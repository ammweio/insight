'use strict'

###*
 # @ngdoc overview
 # @name insight
 # @description
 # # insight
 #
 # Main module of the application.
###
angular
.module 'insight', [
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
    controller: 'MainController'
  .when '/about',
    templateUrl: 'views/about.html'
    controller: 'AboutController'
  .when '/tree',
    templateUrl: 'views/tree.html'
    controller: 'TreeController'
  .otherwise
      redirectTo: '/'
.run (editableOptions) ->
   editableOptions.theme = 'bs3';# bootstrap3 theme. Can be also 'bs2', 'default'


