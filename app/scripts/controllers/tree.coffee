'use strict'

angular.module 'elanceApp'
.controller 'TreeCtrl', ($scope) ->

  $scope.remove = (scope) ->
    console.log 'hello world'
    scope.remove()
    return

  $scope.toggle = (scope) ->
    scope.toggle()
    return

  $scope.moveLastToTheBegginig = ->
    a = $scope.data.pop();
    $scope.data.splice 0,0, a
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

  $scope.user = {
    name: 'awesome user'
  }
  $scope.data = [{
    "id": 1,
    "title": "node1",
    "nodes": [
      {
        "id": 11,
        "title": "node1.1",
        "nodes": [
          {
            "id": 111,
            "title": "node1.1.1",
            "nodes": []
          }
        ]
      },
      {
        "id": 12,
        "title": "node1.2",
        "nodes": []
      }
    ]
  }, {
    "id": 2,
    "title": "node2",
    "nodes": [
      {
        "id": 21,
        "title": "node2.1",
        "nodes": []
      },
      {
        "id": 22,
        "title": "node2.2",
        "nodes": []
      }
    ]
  }, {
    "id": 3,
    "title": "node3",
    "nodes": [
      {
        "id": 31,
        "title": "node3.1",
        "nodes": []
      }
    ]
  }, {
    "id": 4,
    "title": "node4",
    "nodes": [
      {
        "id": 41,
        "title": "node4.1",
        "nodes": []
      }
    ]
  }]
