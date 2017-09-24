'use strict';

angular.module('taskManagerApp').factory('ContentService', function ($http) {


        var factory = {
            getAllPosts: getAllPosts,
            loadContentTypes: loadContentTypes,
            updateContent: updateContent,
            deleteContent: deleteContent,
            getContentByID:  getContentByID
        };

        return factory;


        function getAllPosts(searchTerm, page, size) {

            return $http.get('apicontent/contents?searchTerm=' + searchTerm + '&page=' + page + '&size=' + size).then(
                function (response) {
                    return response;
                },
                function (errResponse) {
                    console.error('Error while loading getAllPosts' + errResponse);
                }
            );

        }

        function loadContentTypes() {

            return $http.get('contentTypes').then(
                function (response) {
                    return response;
                },
                function (errResponse) {
                    console.error('Error while invoking loadContentTypes' + errResponse);
                }
            );
        }

        function updateContent(content) {

            return $http.post('apicontent/contentupdate/', content).then(
                function (response) {
                    console.log("--------------" + response);
                    return response;
                },
                function (errResponse) {
                    console.error('Error while loading updateContent' + errResponse);
                }
            );
        }

        function deleteContent(id) {
            return $http.delete('apicontent/contentdelete/'+ id).then(
                function (response) {
                    console.log('response delete content :::: '+response);
                    return response;
                },
                function (errResponse) {
                    console.error('Error while loading deleteContent' + errResponse);
                }
            );
        }
    function getContentByID(id) {
        return $http.get('apicontent/content/'+ id).then(
            function (response) {
                console.log('response get content :::: '+response);
                return response;
            },
            function (errResponse) {
                console.error('Error while loading deleteContent' + errResponse);
            }
        );
    }
    }
);