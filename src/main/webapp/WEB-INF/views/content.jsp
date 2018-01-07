<div ng-controller="ContentController" >

    <div ng-show="!showSingleView" when-ready="bodyIsReady()" class="panel panel-primary">
        <div class="panel-heading">
            <div style="font-weight: bolder;" class="panel-title pull-left">
                <input type="text" ng-model="searchTerm" ng-change="change()"
                       placeholder="Search by Title"
                       class="form-control" id="titlefilter">
            </div>
            <div class="panel-title pull-right"></div>
            <div class="clearfix"></div>
        </div>

        <div class="panel-body">

            <div ng-repeat="post in posts">
                <div class="col-xs-12 col-sm-3 col-md-3">
                    <a href="#">
                        <img class="img-responsive img-box img-thumbnail" ng-click="selectRow(post)"
                             style="max-width: 150px;min-width: 150px;min-height: 175px;max-height: 175px;"
                             ng-src="{{post.imagePath == null ? '${pageContext.request.contextPath}/resources/images/emtyimage.png' : post.imagePath}}"/>
                    </a>
                </div>
                <div class="col-xs-12 col-sm-3 col-md-3">
                    <div class="list-group">
                        <div class="list-group-item">
                            <div class="row-content">
                                <div class="list-group-item-heading">
                                    <a href="#" title="">
                                        <h4 style="color: #88c149;font-weight: bold;">{{post.title}} </h4>
                                    </a>
                                    <span>Date : {{ post.insertDate | date:'MM/dd/yyyy' }}</span>
                                    <p><a href="#">Post type : {{post.contentType.name}} </a></p>
                                    <p>Written by {{post.author}}</p>
                                    <%--<p>{{post.description}}</p>--%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


        </div>
    </div>


    <jsp:include page="view.jsp"/>


    <ul ng-show="!showSingleView" uib-pagination total-items="totalItems"
        ng-model="currentPage" items-per-page="itemsPerPage"
        max-size="7" rotate="false" previous-text="&lsaquo;" next-text="&rsaquo;"
        first-text="&laquo;" last-text="&raquo;"/>

    <div ng-show="loading" class="loading">Loading&#8230;</div>
</div>


<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/FileUpload.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/ContentService.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/ContentController.js"></script>

