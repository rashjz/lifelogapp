<%@ page contentType="text/html;  charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>

    <title>Lifelog</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="description" content="Lifelog by Mahizar Javadova">
    <meta name="author" content="Rashad Javadov">
    <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/resources/images/fav.png">

    <base href="/"/>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/webjars/font-awesome/4.7.0/css/font-awesome.css"/>


    <script type="text/javascript" src="${pageContext.request.contextPath}/webjars/jquery/3.2.1/jquery.min.js"></script>

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/full-slider.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css"/>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/webjars/bootstrap/3.3.7/css/bootstrap.css"/>
    <link href="https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/cerulean/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-zF4BRsG/fLiTGfR9QL82DrilZxrwgY/+du4p/c7J72zZj+FLYq4zY00RylP9ZjiT" crossorigin="anonymous"/>

    <script type="text/javascript"
            src="${pageContext.request.contextPath}/webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <script type="text/javascript"
            src="${pageContext.request.contextPath}/webjars/angularjs/1.6.4/angular.min.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/webjars/angularjs/1.6.4/angular-route.min.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/webjars/angularjs/1.6.4/angular-resource.min.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/webjars/angularjs/1.6.4/angular-animate.js"></script>

    <script type="text/javascript"
            src="${pageContext.request.contextPath}/resources/js/ui-bootstrap-tpls-2.5.0.min.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/resources/js/angular-socialshare.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/lifelog-app.js"></script>


    <script type="text/javascript"
            src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>

</head>
<body ng-app="taskManagerApp">

<!-- Page Content -->

<jsp:include page="templates/menu.jsp"/>

<div class="container">
    <div  class="row">

        <!-- Blog Entries Column -->
        <div class="col-md-8">

            <jsp:include page="${content}"/>

        </div>
        <c:choose>
            <c:when test="${sidebar != null }">
                <br/>
            </c:when>
            <c:otherwise>
                <jsp:include page="templates/sidebar.jsp"/>
            </c:otherwise>
        </c:choose>


    </div>
    <!-- /.row -->


    <jsp:include page="templates/footer.jsp"/>

</div>

</body>
</html>
