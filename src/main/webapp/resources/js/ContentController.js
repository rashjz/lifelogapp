angular.module('taskManagerApp').controller('ContentController',
    ['$scope', 'ContentService', 'uploadService', '$uibModal', '$location', function ($scope, ContentService, uploadService, $uibModal, $location) {
        $scope.loading = true;

        $scope.searchTerm = '';
        $scope.errorMessage = '';
        $scope.totalItems;
        $scope.currentPage = 1;
        $scope.itemsPerPage = 3;
        $scope.content = {};
        $scope.showSingleView = false;

        getAllContentTypes();

        $scope.tinymceOptions = {
            onChange: function(e) {
                // put logic here for keypress and cut/paste changes
            },
            inline: false,
            plugins: 'print preview fullpage searchreplace autolink directionality visualblocks visualchars fullscreen image link media template table hr pagebreak nonbreaking toc insertdatetime lists textcolor wordcount colorpicker ',
            toolbar1: 'formatselect | bold italic strikethrough forecolor backcolor | link | alignleft aligncenter alignright alignjustify  | numlist bullist outdent indent  | removeformat image',
            skin: 'lightgray',
            theme : 'modern',
            images_upload_url: '/apiuser/uploadfroala/',
            // images_upload_base_path: '/some/basepath',
            images_upload_credentials: true
        };

        // $scope.bodyIsReady = function () {
        //     $scope.loading = false;
        // };

        if ($location.search() != '{}' && $location.search().cKey != undefined) {
            ContentService.getContentByID($location.search().cKey).then(
                function (response) {
                    $scope.showSingleView = true;
                    $scope.content = response.data;
                    console.log('load content by url content ID ' + JSON.stringify(response));
                }, function (error) {
                    console.log(error + " error  during service call")
                    $scope.posts = [];
                });
        }

        $scope.change = function () {
            getAllPosts()

        };


        function getAllPosts() {
            $scope.showSingleView = false;

            ContentService.getAllPosts($scope.searchTerm, $scope.currentPage - 1, $scope.itemsPerPage).then(
                function (response) {
                    console.log("searchTerm " + $scope.searchTerm + " currentPage " + $scope.currentPage + " itemsPerPage " + $scope.itemsPerPage);
                    $scope.posts = response.data.posts;
                    $scope.totalItems = response.data.totalItems;
                }, function (error) {
                    console.log(error + " error  during service call");
                    $scope.errorMessage = 'Error occured! ' + error;
                    $scope.posts = [];
                }).finally(function () {
                $scope.loading = false;
            });
        }

        $scope.editContent = function editContent() {
            ContentService.updateContent($scope.content).then(
                function (response) {
                    console.log('updated content is ' + JSON.stringify(response));
                    if (response == 'undefined' || response.data.note != null || response.data.note != '') {
                        $scope.errorMessage = 'Error occured! ' + response.data.note;
                    }
                }, function (error) {
                    console.log(error + " error  during service call")
                    $scope.errorMessage = 'Error occured! ' + error;
                });
        };

        function getAllContentTypes() {
            ContentService.loadContentTypes().then(
                function (response) {
                    $scope.contentTypes = response.data;
                }, function (error) {
                    console.log(error + " error  during service call")
                    $scope.contentTypes = [];
                    $scope.errorMessage = 'Error occured! ' + error;
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
                                console.log(error + " error  during service call");
                                $scope.errorMessage = 'error occured! ' + error;
                            });
                    },
                    function (error) {
                        $scope.errorMessage = 'Error occured! ' + error;
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
            $scope.content = content;
            $scope.showSingleView = true;
        };


        $scope.onFileSelect = function (files) {
            console.log($scope.content.id);
            uploadService.uploadFileToUrl(files, $scope.content.id).then(
                function (response) {
                    console.log(response.data.imagePath);
                    $scope.content.imagePath = response.data.imagePath;
                }, function (error) {
                    console.log(error + " error  during service call")
                    $scope.errorMessage = 'Error occured! ' + error;
                });
        };

    }
    ]);
