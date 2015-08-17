/**
 * Created by seven on 7/25/2015.
 */
var insight = angular.module('insight');
insight.controller('BookRecommendationsController', function($scope,BookRecommendations,DouBanISBN) {
    BookRecommendations.query(function(result){
        $scope.recommendations = result;
    })
    DouBanISBN.get({isbn:'9787121160851'},function(result){
        alert("dddd"+result.catalog);
        alert(result.author_intro);
    });
    $scope.getTags = function(tags){
        var tagArray = [];
        angular.forEach(tags, function(value, key) {
            tagArray.push(value.name);
        });
        return tagArray;
    }
});