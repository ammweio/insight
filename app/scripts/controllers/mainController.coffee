'use strict'

###*
 # @ngdoc function
 # @name insight.controller:MainController
 # @description
 # # MainController
 # Controller of the insight
###
angular.module 'insight'
  .controller 'MainController', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
