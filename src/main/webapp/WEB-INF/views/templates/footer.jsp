<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<div style="margin-top: 5%" class="footer navbar-fixed${navbarlocation}">

    <footer style="background: #1995dc; color: #ffffff;border-color: #1995dc;" class="site-footer navbar-default">
        <hr/>
        <div class="container">
            <div class="row ">
                <div class="col-md-2">
                    <div class="widget">
                        <h3 style="color: #ffffff" class="widget-title"><spring:message code="about"/></h3>
                        <p></p>
                        <li><a style="color: #ffffff"  href="#">about</a></li>
                        <li><a style="color: #ffffff"  href="#">contact</a></li>
                        <li><a style="color: #ffffff"  href="#">Privacy-Policy</a></li>
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="widget">
                        <h3 style="color: #ffffff"  class="widget-title"><spring:message code="menu"/></h3>
                        <ul class="no-bullet">
                            <li><a style="color: #ffffff"  href="#"><spring:message code="posts"/></a></li>
                            <li><a style="color: #ffffff"  href="#">photos</a></li>
                            <li><a style="color: #ffffff"  href="#">meals</a></li>
                        </ul>
                    </div>
                </div>


                <div class="col-md-2">
                    <div class="widget">
                        <h3 style="color: #ffffff"  class="widget-title">Newsletter</h3>
                        <form action="#" class="subscribe-form">
                            <input type="text" placeholder="Email Address"/>
                        </form>
                    </div>
                </div>
            </div>

            <div style="color: #ffffff"  class="colophon"> &copy; 2017 Lifelog, Inc. (<a style="color: #ffffff" href="http://rashjz.info" target="_blank">http://rashjz.info</a>)
            </div>
        </div>
    </footer>
</div>

