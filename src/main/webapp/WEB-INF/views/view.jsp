<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div ng-show="showSingleView" style="margin-top: 5%" class="panel panel-default">
    <div class="panel-heading">
        <div style="font-weight: bolder;" class="panel-title pull-left">
            {{content.title}}
        </div>
        <div class="panel-title pull-right"> Date : {{ content.insertDate | date:'MM/dd/yyyy' }} </div>
        <div class="clearfix"></div>
    </div>

    <div class="panel-body">


        <div  class="panel panel-default">
            <div class="row">
                <div class="col-xs-12 col-sm-3 col-md-3">
                    <img class="img-responsive img-box img-thumbnail"
                         ng-src="{{content.imagePath == null ? 'images/emtyimage.png' : content.imagePath}}"/>
                </div>
                <div class="col-xs-12 col-sm-3 col-md-3">
                    <h5>{{content.title}} </h5>


                    <h6>Post type : {{content.contentType.name}} <span>Date : {{ content.insertDate | date:'MM/dd/yyyy' }}</span>
                    </h6>
                    <p>Written by {{content.author}}</p>
                    <p>{{content.description}}</p>

                </div>
            </div>
        </div>


    </div>
</div>