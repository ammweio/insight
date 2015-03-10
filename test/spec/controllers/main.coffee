'use strict'

describe 'Controller: MainController', ->

  # load the controller's module
  beforeEach module 'insight'

  MainController = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    MainController = $controller 'MainController', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(scope.awesomeThings.length).toBe 3
