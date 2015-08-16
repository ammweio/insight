/**
 * Created by seven on 8/16/2015.
 */
var insight = angular.module('insight');
insight.controller('BooksForMeController', function($scope,$stateParams,BookRecommendations,Tags) {
    console.log($stateParams.status+"===============")
    BookRecommendations.query(function(result){
        $scope.recommendations = result;
    })
    Tags.query(function(result){
        $scope.tags = result;
    })
    $scope.getTags = function(tags){
        var tagArray = [];
        angular.forEach(tags, function(value, key) {
            tagArray.push(value.name);
        });
        return tagArray;
    }
})