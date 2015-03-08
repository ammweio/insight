'use strict'

###*
 # @ngdoc function
 # @name elanceApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the elanceApp
###
angular.module 'elanceApp'
  .controller 'MainCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
