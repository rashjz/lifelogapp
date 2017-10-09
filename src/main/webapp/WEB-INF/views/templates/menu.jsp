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
            <a class="navbar-brand" href="/" target="_self">Lifelog</a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li id="menulink1"><a class="nav-link" href="/content" target="_self">Posts<span class="sr-only">(current)</span></a>
                </li>
                <li id="menulink3"><a class="nav-link" href="/content?type=2" target="_self">Photos</a></li>
                <li id="menulink4"><a class="nav-link" href="/about" target="_self">About</a></li>
                <li id="menulink5"><a href="/contact" target="_self">contact</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li id="menulink6"><a href="/login" target="_self">Sign In</a></li>
                <li id="menulink7"><a href="/register" target="_self">Register</a></li>
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



<!-- Full Page Image Background Carousel Header -->
<header id="myCarousel" class="carousel slide">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for Slides -->
    <div class="carousel-inner">
        <div class="item active">
            <!-- Set the first background image using inline CSS below. -->
            <div class="fill" style="background-image:url('https://wallpapercave.com/wp/wc1716335.jpg&text=Slide One');"></div>
            <div class="carousel-caption">
                <h2>Caption 1</h2>
            </div>
        </div>
        <div class="item">
            <!-- Set the second background image using inline CSS below. -->
            <div class="fill" style="background-image:url('http://www.qygjxz.com/data/out/89/5411051-futurama-wallpaper.png&text=Slide Two');"></div>
            <div class="carousel-caption">
                <h2>Caption 2</h2>
            </div>
        </div>
        <div class="item">
            <!-- Set the third background image using inline CSS below. -->
            <div class="fill" style="background-image:url('http://placehold.it/1900x1080&text=Slide Three');"></div>
            <div class="carousel-caption">
                <h2>Caption 3</h2>
            </div>
        </div>
    </div>

    <!-- Controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
        <span class="icon-prev"></span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
        <span class="icon-next"></span>
    </a>

</header>
