/**
 * Created by seven on 8/17/2015.
 */
/**
 * Created by seven on 4/25/2015.
 */

var insight = angular.module('insight');
insight.controller('BookScannerController', function ($scope,$rootScope, $ionicPlatform,$cordovaBarcodeScanner,$cordovaLocalNotification,DouBanISBN) {
    $ionicPlatform.ready(function () {
        //
        $scope.scanBarcode = function () {
            $cordovaBarcodeScanner
                .scan()
                .then(function (barcodeData) {
                    // Success! Barcode data is here
                    alert(barcodeData.text);
                    DouBanISBN.get({isbn:barcodeData.text},function(result){
                        alert("dddd"+result.catalog);
                        alert(result.author_intro);
                    });
                    console.log("Barcode Format -> " + barcodeData.format);
                    console.log("Cancelled -> " + barcodeData.cancelled);
                }, function (error) {
                    // An error occurred
                    console.log("An error happened -> " + error);
                });
        }
        //
        $scope.enCodeBarcode = function () {
            // NOTE: encoding not functioning yet
            $cordovaBarcodeScanner
                .encode(BarcodeScanner.Encode.TEXT_TYPE, "http://www.nonumber1989.com")
                .then(function (success) {
                    // Success!
                }, function (error) {
                    // An error occurred
                });
        }

        // ========== Scheduling for notification

        $scope.scheduleSingleNotification = function () {
            $cordovaLocalNotification.add({
                id:      1,
                title:   'Notification',
                message: "wwwwwwww",
                repeat:  'daily',
                date:    new Date(new Date().getTime() + 30*1000)
            });
            //$cordovaLocalNotification.schedule({
            //    id: 1,
            //    title: 'Title here',
            //    text: 'Text here',
            //    data: {
            //        customProperty: 'custom value'
            //    }
            //}).then(function (result) {
            //    alert("test"+result);
            //});
        };

        $scope.scheduleMultipleNotifications = function () {
            $cordovaLocalNotification.schedule([
                {
                    id: 1,
                    title: 'Title 1 here',
                    text: 'Text 1 here',
                    data: {
                        customProperty: 'custom 1 value'
                    }
                },
                {
                    id: 2,
                    title: 'Title 2 here',
                    text: 'Text 2 here',
                    data: {
                        customProperty: 'custom 2 value'
                    }
                },
                {
                    id: 3,
                    title: 'Title 3 here',
                    text: 'Text 3 here',
                    data: {
                        customProperty: 'custom 3 value'
                    }
                }
            ]).then(function (result) {
                // ...
            });
        };

        $scope.scheduleDelayedNotification = function () {
            var now = new Date().getTime();
            var _10SecondsFromNow = new Date(now + 10 * 1000);

            $cordovaLocalNotification.schedule({
                id: 1,
                title: 'Title here',
                text: 'Text here',
                at: _10SecondsFromNow
            }).then(function (result) {
                // ...
            });
        };

        $scope.scheduleEveryMinuteNotification = function () {
            $cordovaLocalNotification.schedule({
                id: 1,
                title: 'Title here',
                text: 'Text here',
                every: 'minute'
            }).then(function (result) {
                // ...
            });
        };

        // =========/ Scheduling

        // ========== Update

        $scope.updateSingleNotification = function () {
            $cordovaLocalNotification.update({
                id: 1,
                title: 'Title - UPDATED',
                text: 'Text - UPDATED'
            }).then(function (result) {
                // ...
            });
        };

        $scope.updateMultipleNotifications = function () {
            $cordovaLocalNotification.update([
                {
                    id: 1,
                    title: 'Title 1 - UPDATED',
                    text: 'Text 1 - UPDATED'
                },
                {
                    id: 2,
                    title: 'Title 2 - UPDATED',
                    text: 'Text 2 - UPDATED'
                },
                {
                    id: 3,
                    title: 'Title 3 - UPDATED',
                    text: 'Text 3 - UPDATED'
                }
            ]).then(function (result) {
                // ...
            });
        };

        // =========/ Update

        // ========== Cancelation

        $scope.cancelSingleNotification = function () {
            $cordovaLocalNotification.cancel(1).then(function (result) {
                // ...
            });
        };

        $scope.cancelMultipleNotifications = function () {
            $cordovaLocalNotification.cancel([1, 2]).then(function (result) {
                // ...
            });
        };

        $scope.cancelAllNotifications = function () {
            $cordovaLocalNotification.cancelAll().then(function (result) {
                // ...
            });
        };

        // =========/ Cancelation

        // ========== Events

        $rootScope.$on('$cordovaLocalNotification:schedule',
            function (event, notification, state) {
                alert("schedule");
            });

        $rootScope.$on('$cordovaLocalNotification:trigger',
            function (event, notification, state) {
                alert("trigger");
            });

        $rootScope.$on('$cordovaLocalNotification:update',
            function (event, notification, state) {
                alert("update");
            });

        $rootScope.$on('$cordovaLocalNotification:clear',
            function (event, notification, state) {
                alert("clear");
            });

        $rootScope.$on('$cordovaLocalNotification:clearall',
            function (event, state) {
                alert("clearall");
            });

        $rootScope.$on('$cordovaLocalNotification:cancel',
            function (event, notification, state) {
                alert("cancel");
            });

        $rootScope.$on('$cordovaLocalNotification:cancelall',
            function (event, state) {
                alert("cancelall");
            });

        $rootScope.$on('$cordovaLocalNotification:click',
            function (event, notification, state) {
                alert("click");
            });

        // =========/ Events

    });


});