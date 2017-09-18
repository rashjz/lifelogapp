
    <div class="row">
        <div style="margin-top: 5%;" class="col-md-6 col-md-offset-3">
            <form action="/register" method="get">
                <button class="btn btn-md btn-warning btn-block" type="Submit">Go To Registration Page</button>
            </form>
            <form action="/login" method="POST" class="form-signin">
                <%--<h3 class="form-signin-heading" th:text="Welcome"></h3>--%>
                <br/>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

                <input type="text" id="email" name="email" placeholder="Email"
                       class="form-control"/> <br/>
                <input type="password" placeholder="Password"
                       id="password" name="password" class="form-control"/> <br/>

                <%--<div align="center" th:if="${param.error}">--%>
                    <%--<p style="font-size: 20px; color: #FF1C19;">Email or Password invalid, please verify</p>--%>
                <%--</div>--%>
                <button class="btn btn-lg btn-primary btn-block" name="Submit" value="Login" type="Submit">Login</button>
            </form>
        </div>
    </div>

