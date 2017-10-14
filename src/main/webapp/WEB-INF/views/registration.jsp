<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<div class="panel panel-primary">
    <div class="panel-heading">
        <h3 class="panel-title">Registration Form</h3>
    </div>
    <div class="panel-body">

        <div class="row vertical-offset-100">
            <div class="col-md-4 col-md-offset-4">

                <form action="/registration" method="post" class="form-horizontal" role="form">

                    <div class="form-group">
                        <div class="col-sm-12">
                            <label class="validation-message"></label>
                            <input type="text" name="name" placeholder="<spring:message code="name"/>" class="form-control"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-12">
                            <label class="validation-message"></label>
                            <input type="text" name="lastname" placeholder="<spring:message code="lastname"/>" class="form-control"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-12">
                            <input type="text" name="email" placeholder="<spring:message code="email"/>" class="form-control"/>
                            <label class="validation-message"></label>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-12">
                            <input type="password" placeholder="<spring:message code="password"/>" name="password" class="form-control"/>
                            <label class="validation-message"></label>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-12">
                            <button type="submit" class="btn btn-primary btn-block"><spring:message code="register"/></button>
                        </div>
                    </div>

                    <%--<div class="col-sm-9 alert alert-success alert-dismissible" role="alert">--%>
                    <%--<button type="button" class="close" data-dismiss="alert" aria-label="Close">--%>
                    <%--<span aria-hidden="true">&times;</span>--%>
                    <%--</button>--%>
                    <%--<span style="">${successMessage}</span>--%>
                    <%--</div>--%>

                    <%--<div  class="col-sm-9 alert alert-danger alert-dismissible" role="alert">--%>
                    <%--<button type="button" class="close" data-dismiss="alert" aria-label="Close">--%>
                    <%--<span aria-hidden="true">&times;</span>--%>
                    <%--</button>--%>
                    <%--<span style=""${errorMessage}></span>--%>
                    <%--</div>--%>

                </form>
            </div>
        </div>
    </div>


</div>
