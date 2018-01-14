<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div id="fb-root"></div>
<script>(function (d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s);
    js.id = id;
    js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.10&appId=888848437872798";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>


<div ng-show="showSingleView" class="panel panel-primary">
    <div class="panel-heading">
        <div style="font-weight: bolder;" class="panel-title pull-left">
            <a id="link-1" href ng-click="change()"><u>Show All ></u></a> <u>{{content.title}}</u>

        </div>
        <div class="panel-title pull-right"> Date : {{ content.insertDate | date:'MM/dd/yyyy' }}</div>
        <div class="clearfix"></div>
    </div>

    <div class="panel-body">

        <div class="paragraphs">
            <div class="row">
                <div class="span4">
                    <img style="float:left;margin-left: 10px; margin-right: 10px;" class="img-responsive img-box img-thumbnail"
                         ng-src="{{content.imagePath == null ? '${pageContext.request.contextPath}/resources/images/emtyimage.png' : content.imagePath}}"/>
                    <div class="content-heading">
                        <h4>
                            &nbsp <p style="color: #88c149;font-weight: bold;">Written by {{content.title}}</p> &nbsp
                        </h4>
                    </div>
                    <p>Post type : {{content.contentType.name}} </p>
                    <p>Date : {{ content.insertDate | date:'MM/dd/yyyy' }}</p>
                    <p>
                    <div style="margin-left: 10px;" compile-html="content.description"></div>
                    </p>
                    <p style="margin-left: 10px;" >Written by {{content.author}}</p>
                </div>
            </div>
        </div>

        <%--<div class="panel panel-primary">--%>
        <%--<div class="row">--%>
        <%--<div class="col-xs-6 col-sm-6 col-md-6">--%>
        <%--<img class="img-responsive img-box img-thumbnail"--%>
        <%--ng-src="{{content.imagePath == null ? '${pageContext.request.contextPath}/resources/images/emtyimage.png' : content.imagePath}}"/>--%>
        <%--</div>--%>
        <%--<div class="col-xs-6 col-sm-6 col-md-6">--%>
        <%--<h4 style="color: #88c149;font-weight: bold;">{{content.title}} </h4>--%>
        <%--<br/>--%>
        <%--<p>Post type : {{content.contentType.name}} </p>--%>
        <%--<p>Date : {{ content.insertDate | date:'MM/dd/yyyy' }}</p>--%>
        <%--<p>Written by {{content.author}}</p>--%>
        <%--<div compile-html="content.description"></div>--%>

        <%--</div>--%>
        <%--</div>--%>
        <%--</div>--%>


        <table>
            <tbody>
            <tr>
                <td>
                    <a href="#" class="btn btn-block btn-social btn-twitter"
                       socialshare
                       socialshare-provider="twitter"
                       socialshare-text="{{content.title}}"
                       <%--socialshare-hashtags="angularjs, angular-socialshare"--%>
                       socialshare-url="http://${pageContext.request.contextPath}/view?cKey={{content.id}}">
                        <span class="fa fa-twitter"></span> Twitter
                    </a>
                </td>
                <td>
                    <a href="#" class="btn btn-block btn-social btn-facebook"
                       socialshare
                       socialshare-provider="facebook"
                       socialshare-text="{{content.title}}"
                       <%--socialshare-hashtags="angularjs, angular-socialshare"--%>
                       socialshare-url="http://${pageContext.request.contextPath}/view?cKey={{content.id}}">
                        <span class="fa fa-facebook"></span> Facebook
                    </a>
                </td>
                <td>
                    <a href="#" class="btn btn-block btn-social btn-linkedin"
                       socialshare
                       socialshare-provider="linkedin"
                       socialshare-text="{{content.title}}"
                       <%--socialshare-description="angularjs, angular-socialshare"--%>
                       socialshare-url="http://${pageContext.request.contextPath}/view?cKey={{content.id}}"
                       socialshare-source="">
                        <span class="fa fa-linkedin"></span> Linkedin
                    </a>
                </td>
                <td>
                    <a href="#" class="btn btn-block btn-social btn-vk"
                       socialshare
                       socialshare-provider="vk"
                       socialshare-text="{{content.title}}"
                       <%--socialshare-description="angularjs, angular-socialshare"--%>
                       socialshare-url="http://${pageContext.request.contextPath}/view?cKey={{content.id}}"
                       socialshare-media="#">
                        <span class="fa fa-vk"></span> VK
                    </a>
                </td>
                <td>
                    <a href="#" class="btn btn-block btn-social btn-google"
                       socialshare
                       socialshare-provider="google"
                       socialshare-url="http://${pageContext.request.contextPath}/view?cKey={{content.id}}">
                        <span class="fa fa-google"></span> Google
                    </a>
                </td>
                <td>
                    <a href="#" class="btn btn-block btn-social btn-evernote"
                       socialshare
                       socialshare-provider="evernote"
                       socialshare-url="http://${pageContext.request.contextPath}/view?cKey={{content.id}}"
                       socialshare-text="{{content.title}}">
                        <span class="fa fa-envelope-o"></span> Evernote
                    </a>
                </td>
            </tr>
            </tbody>
        </table>

        <div class="fb-comments" data-href="http://78.46.139.155/view?cKey={{content.id}}" data-numposts="5"></div>


    </div>
</div>



