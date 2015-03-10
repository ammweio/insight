'use strict'

###*
 # @ngdoc function
 # @name insight.controller:AboutController
 # @description
 # # AboutController
 # Controller of the insight
###
angular.module 'insight'
  .controller 'AboutController', ($scope) ->
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
