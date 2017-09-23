<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Lifelog</title>
    <meta name="description" content="Lifelog by Mahizar Javadova">
    <meta name="author" content="Rashad Javadov">
    <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/resources/images/fav.png">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <%--<link href='${pageContext.request.contextPath}/resources/css/style.css' rel="stylesheet" type="text/css"/>--%>
    <%--<link href='${pageContext.request.contextPath}/resources/css/social.css' rel="stylesheet" type="text/css"/>--%>
    <link href='${pageContext.request.contextPath}/resources/css/spinner.css' rel="stylesheet" type="text/css"/>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/gsap/1.18.0/TweenMax.min.js"></script>

    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/webjars/font-awesome/4.7.0/css/font-awesome.css"/>


    <script type="text/javascript" src="webjars/jquery/3.2.1/jquery.min.js"></script>

    <link rel="stylesheet" type="text/css" href="webjars/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <script type="text/javascript" src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <script type="text/javascript" src="webjars/angularjs/1.6.4/angular.min.js"></script>
    <script type="text/javascript" src="webjars/angularjs/1.6.4/angular-route.min.js"></script>
    <script type="text/javascript" src="webjars/angularjs/1.6.4/angular-resource.min.js"></script>
    <script type="text/javascript" src="webjars/angularjs/1.6.4/angular-animate.js"></script>

    <script type="text/javascript"
            src="${pageContext.request.contextPath}/resources/js/ui-bootstrap-tpls-2.5.0.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/angular-socialshare.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/lifelog-app.js"></script>


    <script type="text/javascript"
            src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>

</head>
<body ng-app="taskManagerApp">

<%--<div th:replace="templates/menu :: menu"></div>--%>
<jsp:include page="templates/menu.jsp"/>

<div class="container">


    <jsp:include page="${content}"/>

</div>
<%--<div th:replace="templates/footer :: footer"></div>--%>
<jsp:include page="templates/footer.jsp"/>

<div ng-show="loading" id="mydiv">
    <img src="${pageContext.request.contextPath}/resources/images/gettestr-large-spinner-orange.gif"
         class="ajax-loader"/>
</div>


</body>
</html>