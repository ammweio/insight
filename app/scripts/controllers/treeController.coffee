'use strict'

angular.module 'insight'
.controller 'TreeController', ($scope,$resource,$filter) ->
  $scope.remove = (scope) ->
    scope.remove()
    return

  $scope.toggle = (scope) ->
    scope.toggle()
    return

  $scope.moveLastToTheBegginig = ->
    a = $scope.data.pop();
    $scope.data.splice 0, 0, a
    return


  $scope.newSubItem = (scope) ->
    nodeData = scope.$modelValue;
    nodeData.nodes.push
      id: nodeData.id * 10 + nodeData.nodes.length,
      title: nodeData.title + '.' + (nodeData.nodes.length + 1),
      nodes: []


  getRootNodesScope = () ->
    root = angular.element document.getElementById "tree-root"
    root.scope()

  $scope.collapseAll = () ->
    scope = getRootNodesScope()
    scope.collapseAll()
    return


  $scope.expandAll = () ->
    scope = getRootNodesScope()
    scope.expandAll()
    return

  $scope.treeResource = $resource 'api/tree.json'

  $scope.data = $scope.treeResource.query()

  $scope.saveTree = () ->
    $scope.treeResource.save $scope.data
    return

  $scope.dropDown = [
      {value: 1001, text: 'drop down 01'},
      {value: 1002, text: 'drop down 02'},
      {value: 1003, text: 'drop down 03'}
    ]

  $scope.showStatus = (node)  ->
    filter = $filter 'filter'
    selected = filter $scope.dropDown, {value: node.title}
    if node.title and selected.length
      selected[0].text
    else
      'Not set'


