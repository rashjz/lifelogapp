angular.module('taskManagerApp').controller('ContentController',
    ['$scope', 'ContentService', 'uploadService', '$uibModal', function ($scope, ContentService, uploadService, $uibModal) {
        $scope.loading = true;
        $scope.searchTerm = '';
        $scope.totalItems;
        $scope.currentPage = 1;
        $scope.itemsPerPage = 3;
        $scope.content = {};


        getAllContentTypes();

        $scope.change = function () {
            getAllPosts()

        };


        function getAllPosts() {
            $scope.loading = true;
            ContentService.getAllPosts($scope.searchTerm, $scope.currentPage - 1, $scope.itemsPerPage).then(
                function (response) {
                    console.log("-------------- $scope.searchTerm " + $scope.searchTerm + " $scope.currentPage " + $scope.currentPage + " $scope.itemsPerPage " + $scope.itemsPerPage);
                    $scope.posts = response.data.posts;
                    $scope.totalItems = response.data.totalItems;
                    console.log(JSON.stringify(response) + " zzzzzzzzzzzzzzzzzzzzzzz")

                }, function (error) {
                    console.log(error + " error  during service call")
                    $scope.posts = [];
                }).finally(function () {
                $scope.loading = false;
            });
        }

        $scope.editContent = function editContent() {
            ContentService.updateContent($scope.content).then(
                function (response) {
                    console.log('responseeeeeeeeeee ' + JSON.stringify(response));
                }, function (error) {
                    console.log(error + " error  during service call")
                    $scope.posts = [];
                });
        };

        function getAllContentTypes() {
            ContentService.loadContentTypes().then(
                function (response) {
                    $scope.contentTypes = response.data;
                }, function (error) {
                    console.log(error + " error  during service call")
                    $scope.contentTypes = [];
                });
        }


        $scope.deleteContent = function deleteContent() {
            if (JSON.stringify($scope.content) != '{}') {
                $uibModal.open({
                    templateUrl: 'modal.html',
                    controller: 'ModalDialogController',
                }).result.then(
                    function (success) {
                        ContentService.deleteContent($scope.content.id).then(
                            function (response) {
                                getAllPosts();
                            }, function (error) {
                                console.log(error + " error  during service call")
                                $scope.contentTypes = [];
                            });
                    },
                    function (error) {
                        // console.log("cancel");
                    }
                );
            }
        };

        $scope.newContent = function newContent() {
            $scope.content = {};
        };


        $scope.$watch("currentPage", function () {
            console.log('current page and itemsperpage  ' + $scope.currentPage + ' ' + $scope.itemsPerPage);
            getAllPosts();
        });


        $scope.selectRow = function (content) {
            console.log(JSON.stringify(content) + " ---------------------");
            $scope.content = content;

        };


        $scope.onFileSelect = function (files) {
            console.log($scope.content.id);
            uploadService.uploadFileToUrl(files, $scope.content.id).then(
                function (response) {
                    console.log(response.data.imagePath);
                    $scope.content.imagePath = response.data.imagePath;
                }, function (error) {
                    console.log(error + " error  during service call")
                    // $scope.users = [];
                });
        };

    }
    ]);
