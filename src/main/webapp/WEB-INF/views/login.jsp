<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<div class="panel panel-primary">
    <div class="panel-heading">
        <div style="font-weight: bolder;" class="panel-title pull-left">
            Please sign in
        </div>
        <div class="panel-title pull-right"></div>
        <div class="clearfix"></div>
    </div>

    <div class="panel-body">
        <div class="col-md-4 col-md-offset-4">


            <form action="login" method="POST" accept-charset="UTF-8">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <fieldset>
                    <div class="form-group">
                        <input class="form-control" placeholder="E-mail" name="email" type="text">
                    </div>
                    <div class="form-group">
                        <input class="form-control" placeholder="Password" name="password" type="password" value="">
                    </div>
                    <div class="checkbox">
                        <label>
                            <input name="remember" type="checkbox" value="Remember Me"> Remember Me
                        </label>
                    </div>
                    <input class="btn btn-lg btn-success btn-block" type="submit" value="Login">
                </fieldset>
            </form>
        </div>
    </div>
</div>
