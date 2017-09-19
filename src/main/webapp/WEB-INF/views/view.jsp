<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div style="margin-top: 5%" class="panel panel-default">
    <div class="panel-heading">
        <div style="font-weight: bolder;" class="panel-title pull-left">
            ${content.title}
        </div>
        <div class="panel-title pull-right">${content.insDate}</div>
        <div class="clearfix"></div>
    </div>

    <div class="panel-body">


        <div class="row">
            <div class="col-md-5">
                <img onerror="this.src='${pageContext.request.contextPath}/resources/images/noimage.jpg'"
                     src="${content.imgUrl}" border="0" class="img-responsive"
                     style="border-color: #7C7C7C; margin-right: 4px;max-width: 350px;"/>
            </div>

            <div style="margin-left: 2%" class="col-md-5">
                <b style="color: #008bad"><spring:message code="additional"/>
                    : </b> ${content.description} </br>

                <b style="color: #008bad"><spring:message code="enddate"/> :</b> ${content.endDate}  </br>

                <b style="color: #008bad"><spring:message code="genre"/> :</b> ${content.genre}   </br>

                <b style="color: #008bad"><spring:message code="producer"/>
                    :</b> ${content.producer}   </br>

                <b style="color: #008bad"><spring:message code="writer"/> :</b> ${content.writer}   </br>

                <b style="color: #008bad"><spring:message code="price"/> :</b> ${content.price} AZN  </br>

                <b style="color: #008bad"><spring:message code="added"/> :</b> ${content.insDate}   </br>

                <!-- public shares -->

                <div style="margin-top: 5%" class="ssk-sm ssk-group"
                     data-url="bakuposter.com/event?c=${dataCode}"
                     data-text="${content.description}"
                     data-title="${content.title}" data-image="${content.imgUrl}">
                    <a class="ssk ssk-facebook"></a>
                    <a class="ssk ssk-twitter"></a>
                    <a class="ssk ssk-google-plus"></a>
                </div>

                <div style="margin-top: 5%" data-send="true"
                     class="fb-like"
                     data-share="true"
                     data-width="350"
                     data-show-faces="true">
                </div>
            </div>
        </div>
    </div>
</div>