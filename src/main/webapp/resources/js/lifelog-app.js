var app = angular.module('taskManagerApp', ['ngResource', 'ngAnimate','ui.bootstrap', 'ngRoute', '720kb.socialshare', 'froala', 'ngSanitize']).config(function ($routeProvider, $locationProvider, $httpProvider) {

    $locationProvider.html5Mode(true).hashPrefix('!');

});

app.constant('urls', {
    BASE: 'http://localhost:8080/',
    USER_SERVICE_API: 'http://localhost:8080/users/',
    TASK_SERVICE_API: 'http://localhost:8080/tasks/'
});

