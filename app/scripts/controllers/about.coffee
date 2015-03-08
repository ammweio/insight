'use strict'

###*
 # @ngdoc function
 # @name elanceApp.controller:AboutCtrl
 # @description
 # # AboutCtrl
 # Controller of the elanceApp
###
angular.module 'elanceApp'
  .controller 'AboutCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
