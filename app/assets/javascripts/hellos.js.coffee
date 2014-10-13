# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
angular.module('hello', [])

angular.module('hello').controller 'HellosCtrl', ($scope, $http) ->
  $scope.newHello = {}
  $scope.name     = 'Doctor'

  $http.get('/hellos.json').success (hellos) ->
    $scope.hellos = hellos

  $scope.addHello = ->
    $http.post('/hellos', { hello: $scope.newHello }).success (hello) ->
      $scope.hellos.push(hello)
      $scope.newHello = {}
