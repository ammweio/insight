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
    $scope.expandAll = () ->
      scope = getRootNodesScope()
#      scope.expandAll()
      console.log "hello world2"
      return

    getRootNodesScope = () ->
      root = angular.element document.getElementById "test"
      console.log(root.textContent+'--hello world')
#      test = ["what","are","you"]
#      angular.forEach test, (value, key) ->
#        console.log value
