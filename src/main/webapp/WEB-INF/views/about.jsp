


    <div class="row">
        <div style="margin-top: 5%" class="panel panel-default panel-table">
            <div class="panel-heading">
                About
            </div>
            <div class="panel-body">
                <p style="margin-top: 20px;font-weight:  bold;">
                    Cinépolis is a Mexican chain of movie theaters. Its name means City of Cinema and its slogan is La
                    Capital del Cine Cinépolis is the biggest cineplex chain in ...
                    <br/>
                    Functionality of android application (012) 496 52 73, (055) 757 87 72, e-mail info@citylife.az
                    <br/>
                    Functionality of android application
                    <br/>
                    * Watch to trailer and poster
                    <br/>
                    * Read description
                    <br/>
                    * Find on map
                    <br/>
                    * Vote or like selected post
                    <br/>
                    * Comment on post
                    <br/>
                    * Event save to calendar feature
                    <br/>
                    * Support google plus and Facebook authorization for user profile for sing in
                    <br/>

            </div>
        </div>
    </div>



    <div class="row">

        <div style="margin-top: 2%;" class="panel panel-default">
            <div class="panel-heading">Map</div>
            <div class="panel-body">

                <div style="height: 40%;width: 100%;" id="map">
                </div>

            </div>
        </div>
    </div>

<script>
    function initMap() {
        var title = 'Company';
        var latitude =50.0802487;
        var longitude =49.9250139;
        var myLatLng = {lat: latitude, lng: longitude};
        var mapDiv = document.getElementById('map');
        var map = new google.maps.Map(mapDiv, {
            center: myLatLng,
            zoom: 14
        });
        var marker = new google.maps.Marker({
            position: myLatLng,
            map: map,
            title: title
        });
    }
</script>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAS3mhlssgqW-VAKDv9chhUooeQsdSGoxo&&callback=initMap"
        async defer></script>