// ng-bind-html and froala-view will not compile into angular for security reasons.
angular.module('taskManagerApp')
    .directive('compileHtml', [
        '$compile',
        function ($compile) {
            return {
                restrict: 'A',
                link: function (scope, element, attrs) {
                    scope.$watch(attrs.compileHtml, function (newValue, oldValue) {
                        element.html(newValue);
                        $compile(element.contents())(scope);
                    });
                }
            };
        }
    ]);