/**
 * Created by seven on 8/16/2015.
 */
var insight = angular.module('insight');
insight.controller('BooksForMeController', function($scope,BookRecommendations) {
    BookRecommendations.query(function(result){
        $scope.books = result;
    })
    $scope.onTabSelected = function(tabName){
        alert("reading----"+tabName)
    }

})