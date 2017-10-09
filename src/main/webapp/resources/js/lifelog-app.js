var app = angular.module('taskManagerApp', ['ngResource', 'ui.bootstrap', 'ngRoute', '720kb.socialshare']).config(function ($routeProvider, $locationProvider, $httpProvider) {
    // $routeProvider //'djds4rce.angular-socialshare',
    //     .when("/",
    //         {
    //             // templateUrl: "../views/content.jsp",
    //             controller: "taskManagerController",
    //             controllerAs: "taskManagerController"
    //         })
    //     .when("/user",
    //         {
    //             templateUrl: "../views/user.jsp",
    //             controller: "UserController",
    //             controllerAs: "UserController"
    //         })
    //     .when('/login', {
    //         templateUrl: '../../../templates/login.jsp',
    //         controller: 'navigation'
    //     })
    //     .otherwise({
    //         templateUrl: "/"
    //     });

    $locationProvider.html5Mode(true).hashPrefix('!');

});


app.constant('urls', {
    BASE: 'http://localhost:8080/',
    USER_SERVICE_API: 'http://localhost:8080/users/',
    TASK_SERVICE_API: 'http://localhost:8080/tasks/'
});

