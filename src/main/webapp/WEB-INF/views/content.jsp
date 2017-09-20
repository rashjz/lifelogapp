<div ng-controller="ContentController" style="margin-top: 7%;">

    <input style="width: 20%" type="text" ng-model="searchTerm" ng-change="change()"
           placeholder="Search by Title"
           class="form-control" id="titlefilter">


    <div ng-show="!showSingleView" style="margin-top: 2%;" ng-repeat="post in posts">


        <div class="row">
            <div class="row">
                <div class="col-xs-12 col-sm-3 col-md-3">
                    <a href="#">
                        <!--<img src="http://wanderluxe.theluxenomad.com/wp-content/uploads/2014/10/http-www.urchinbali.comgallery.jpg"-->
                        <!--class="img-responsive img-box img-thumbnail">-->
                        <img class="img-responsive img-box img-thumbnail" ng-click="selectRow(post)"
                             style="max-width: 200px;"
                             ng-src="{{post.imagePath == null ? 'images/emtyimage.png' : post.imagePath}}"/>
                    </a>
                </div>
                <div class="col-xs-12 col-sm-3 col-md-3">
                    <div class="list-group">
                        <div class="list-group-item">
                            <div class="row-content">
                                <div class="list-group-item-heading">
                                    <a href="#" title="">
                                        <h5>{{post.title}} </h5>
                                    </a>


                                    <h6><a href="#">Post type : {{post.contentType.name}} </a> <span>Date : {{ post.insertDate | date:'MM/dd/yyyy' }}</span>
                                    </h6>
                                    <p>Written by {{post.author}}</p>
                                    <p>{{post.description}}</p>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <hr>
        </div>


    </div>


    <jsp:include page="view.jsp"/>


    <ul ng-show="!showSingleView" style="margin-bottom: 20%;" uib-pagination total-items="totalItems"
        ng-model="currentPage" items-per-page="itemsPerPage"
        max-size="7" rotate="false" previous-text="&lsaquo;" next-text="&rsaquo;"
        first-text="&laquo;" last-text="&raquo;"/>


</div>


<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/FileUpload.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/ContentService.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/ContentController.js"></script>

