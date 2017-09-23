<nav class="navbar navbar-fixed-top  navbar-default" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/">Lifelog</a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li id="menulink1"><a class="nav-link" href="content">Posts<span class="sr-only">(current)</span></a>
                </li>
                <li id="menulink3"><a class="nav-link" href="photos">Photos</a></li>
                <li id="menulink4"><a class="nav-link" href="about">About</a></li>
                <li id="menulink5"><a href="contact">contact</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li id="menulink6"><a href="login">Sign In</a></li>
                <li id="menulink7"><a href="register">Register</a></li>
            </ul>

            <form action="projects" method="GET" class="navbar-form navbar-right">
                <div class="form-group has-feedback">
                    <label for="search" class="sr-only">Search</label>
                    <input class="form-control" name="search" id="search" ng-model="user.name"
                           placeholder="Search"/>
                    <span class="glyphicon glyphicon-search form-control-feedback"></span>
                </div>
            </form>
        </div>

    </div>
</nav>
