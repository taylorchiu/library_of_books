# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

LibraryApp = angular.module("LibraryApp", [])

LibraryApp.controller "LibraryCtrl", ($scope)->
	$scope.libraries = []
	$scope.addLibrary = ->
		$scope.libraries.push($scope.newLibrary)
		$scope.newLibrary = {}

	$scope.deleteLibrary = ->
		$scope.libraries.splice(@$index,1)


LibraryApp.controller "BooksCtrl", ($scope) ->
  $scope.library.books = []
  $scope.addBook = ->
    $scope.library.books.push($scope.newBook) 
    $scope.newBook = {}

  $scope.deleteBook = ->
    $scope.library.books.splice(@$index,1)


