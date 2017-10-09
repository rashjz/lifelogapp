
<div style="margin-top: 7%" class="row vertical-offset-100">
    <div class="col-md-4 col-md-offset-4">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">Registration Form</h3>
            </div>
            <div class="panel-body">


                <form action="/registration" method="post" class="form-horizontal" role="form">

                    <div class="form-group">
                        <div class="col-sm-9">
                            <label class="validation-message"></label>
                            <input type="text" name="name" placeholder="Name" class="form-control"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-9">
                            <label class="validation-message"></label>
                            <input type="text" name="lastname" placeholder="Last Name" class="form-control"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-9">
                            <input type="text" name="email" placeholder="Email" class="form-control"/>
                            <label class="validation-message"></label>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-9">
                            <input type="password" placeholder="Password" name="password" class="form-control"/>
                            <label class="validation-message"></label>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-9">
                            <button type="submit" class="btn btn-primary btn-block">Register User</button>
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