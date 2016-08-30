<!DOCTYPE HTML>
<html >

<head>
    <title>Traveler - Form Elements</title>


    <meta content="text/html;charset=utf-8" http-equiv="Content-Type">
    <meta name="keywords" content="Template, html, premium, themeforest" />
    <meta name="description" content="Traveler - Premium template for travel companies">
    <meta name="author" content="Tsoy">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- GOOGLE FONTS -->
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,300,100,500,700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,400,300,600' rel='stylesheet' type='text/css'>
    <!-- /GOOGLE FONTS -->
    <link rel="stylesheet" href="http://resortfilter.com/fedor/css/bootstrap.css">
    <link rel="stylesheet" href="http://resortfilter.com/fedor/css/font-awesome.css">
    <link rel="stylesheet" href="http://resortfilter.com/fedor/css/icomoon.css">
    <link rel="stylesheet" href="http://resortfilter.com/fedor/css/styles.css">
    <link rel="stylesheet" href="http://resortfilter.com/fedor/css/mystyles.css">
    <script src="http://resortfilter.com/fedor/js/modernizr.js"></script>
    <style type="text/css">
        a:hover  {
            background-color: white !important;
            text-decoration: none;
            color: #0ebcf2 !important;
            /*.child{ display:none; }*/
        }
        /*.list-inline:hover .fa-star-o{ background-color:blue !important;  }*/
        h5 {
            text-align:left;}
        body {
            overflow:scroll;
            width:80%;
            margin:20px 10% 0px 10%;
            border-style:solid;
            border-color:#0ebcf2;
            border-width:1px;
            padding:20px;}
        .aright { float:right; margin-top:-15px;}

    </style>
</head>
<body>
<div style="padding-bottom:40px;" class="row">
    <div class="col-md-6">
        <h3>Welcome ${name}. You are now authenticated. </h3>
        <h4>Find the resort that caters specifically to you</h4>
        <h6>By answering the questions that are most relevant to you.</h6>
        <hr>
        <div>
            <h5>What's the minimum star rating you're open to?</h5>
            <ul class="list-inline">
                <li><a id="rating-btn" class="btn btn-ghost   btn-primary">
                    <ul class="icon-group group-star  booking-item-rating-stars">
                        <li><i data-id="1" class="fa hotel-star  fa-star-o"></i>

                        </li>
                        <li><i  data-id="2" class="fa hotel-star  fa-star-o"></i>
                        </li>
                        <li><i  data-id="3" class="fa hotel-star fa-star-o"></i>

                        </li>
                        <li><i  data-id="4" class="fa hotel-star fa-star-o"></i>
                        </li>
                        <li><i  data-id="5" class="fa hotel-star  fa-star-o"></i>
                        </li>
                    </ul></a>
                </li>
            </ul>
        </div><hr>
        <div>
            <h5>Which destination(s) are you interested in?</h5>
            <ul class="list-inline">
                <li><a href="/restaurant" class="btn btn-ghost btn-primary">Cancun</a>
                </li>
                <li><a class="btn btn-ghost btn-primary">Playa del Carmen</a>
                </li>
                <li><a class="btn btn-ghost btn-primary">Riviera Maya</a>
                </li>
                <li><a class="btn btn-ghost btn-primary">All</a>
                </li>
            </ul>
        </div><hr>
        <div>
            <h5>When it comes to food, I'm a</h5>
            <ul class="list-inline">
                <li><a class="btn btn-ghost btn-primary">picky eater</a>
                </li>
                <li><a class="btn btn-ghost btn-primary">foodie</a>
                </li>
            </ul>
        </div><hr>
        <div>
            <h5>Which liquor/beer do you prefer?</h5>
            <ul class="list-inline">
                <li><a class="btn btn-ghost btn-primary">premium liquor</a>
                </li>
                <li><a class="btn btn-ghost btn-primary">mexican beer</a>
                </li>
                <li><a class="btn btn-ghost btn-primary">american beer</a>
                </li>
                <li><a class="btn btn-ghost btn-primary">wine selections</a>
                </li>
            </ul>
        </div><hr>
        <div>
            <h5>I prefer a ________ room</h5>
            <ul class="list-inline">
                <li><a class="btn btn-ghost btn-primary">modern</a>
                </li>
                <li><a class="btn btn-ghost btn-primary">colonial</a>
                </li>
            </ul>
        </div><hr>
        <div>
            <h5>What vacation do you need?</h5>
            <ul class="list-inline">
                <li><a class="btn btn-ghost btn-primary">family/couples</a>
                </li>
                <li><a class="btn btn-ghost btn-primary">adults only</a>
                </li>
            </ul>
        </div><hr>
        <div>
            <h5>I like to dine at</h5>
            <ul class="list-inline">
                <li><a class="btn btn-ghost btn-primary">restaurants</a>
                </li>
                <li><a class="btn btn-ghost btn-primary">restaurants & buffets</a>
                </li>
            </ul>
        </div><hr>
        <div>
            <h5>For resort restaurant reservations, I prefer to</h5>
            <ul class="list-inline">
                <li><a class="btn btn-ghost btn-primary">make them every day</a>
                </li>
                <li><a class="btn btn-ghost btn-primary">make them all at once</a>
                </li>
                <li><a class="btn btn-ghost btn-primary">decide last minute</a>
                </li>
            </ul>
        </div><hr>
        <div>
            <h5>I prefer ________ resorts</h5>
            <ul class="list-inline">
                <li><a class="btn btn-ghost btn-primary">large</a>
                </li>
                <li><a class="btn btn-ghost btn-primary">medium</a>
                </li>
                <li><a class="btn btn-ghost btn-primary">boutique</a>
                </li>
            </ul>
        </div><hr>
        <div>
            <h5>I will spend most of my time near</h5>
            <ul class="list-inline">
                <li><a class="btn btn-ghost btn-primary">the ocean</a>
                </li>
                <li><a class="btn btn-ghost btn-primary">the pool</a>
                </li>
            </ul>
        </div><hr>
        <div>
            <h5>When it comes to pools, I like</h5>
            <ul class="list-inline">
                <li><a class="btn btn-ghost btn-primary">1-2 large pools</a>
                </li>
                <li><a class="btn btn-ghost btn-primary">3-5 mid-size pools</a>
                </li>
                <li><a class="btn btn-ghost btn-primary">5-15 various-size pools</a>
                </li>
            </ul>
        </div><hr>
        <div>
            <h5>I like pools that are</h5>
            <ul class="list-inline">
                <li><a class="btn btn-ghost btn-primary">social & sometimes quiet</a>
                </li>
                <li><a class="btn btn-ghost btn-primary">quiet</a>
                </li>
            </ul>
        </div><hr>
        <div>
            <h5>My resort must have(s)</h5>
            <ul class="list-inline">
                <li><a class="btn btn-ghost btn-primary">swim up bar</a>
                </li>
                <li><a class="btn btn-ghost btn-primary">infinity pool</a>
                </li>
                <li><a class="btn btn-ghost btn-primary">spa</a>
                </li>
                <li><a class="btn btn-ghost btn-primary">golf</a>
                </li>
                <li style="padding-bottom:10px;"><a class="btn btn-ghost btn-primary">butler service available</a>
                </li>
                <li><a class="btn btn-ghost btn-primary">sports bar</a>
                </li>
                <li><a class="btn btn-ghost btn-primary">lounge</a>
                </li>
                <li><a class="btn btn-ghost btn-primary">jazz or piano bar</a>
                </li>
                <li style="padding-bottom:10px;"><a class="btn btn-ghost btn-primary">nightly entertainment</a>
                </li>
                <li><a class="btn btn-ghost btn-primary">resort nightclub</a>
                </li>
                <li style="padding-bottom:10px;"><a class="btn btn-ghost btn-primary">activities/games</a>
                </li>
                <li><a class="btn btn-ghost btn-primary">wifi included</a>
                </li>
            </ul>
        </div><hr>
        <div>
            <h5>I need a resort that offers ________ options</h5>
            <ul class="list-inline">
                <li><a class="btn btn-ghost btn-primary">gluten free</a>
                </li>
                <li><a class="btn btn-ghost btn-primary">vegetarian</a>
                </li>
            </ul>
        </div><hr>

    </div>
    <div class="col-md-6">
        <h4>Showing 180+ all inclusive resorts</h4>

        <h6>Hover over a hotel to see why it's right for you</h6>
        <hr>
        <ul class="booking-list">
            <li>
                <a class="booking-item" href="/book.html">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="booking-item-img-wrap">
                                <img src="http://resortfilter.com/fedor/img/800x600.png" alt="Image Alternative text" title="hotel 2" />
                                <div class="booking-item-img-num"><i class="fa fa-picture-o"></i>10</div>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="booking-item-rating">
                                <ul class="icon-group    booking-item-rating-stars">
                                    <li><i class="fa  fa-star"></i>
                                    </li>
                                    <li><i class="fa   fa-star"></i>
                                    </li>
                                    <li><i class="fa   fa-star"></i>
                                    </li>
                                    <li><i class="fa   fa-star"></i>
                                    </li>
                                    <li><i class="fa   fa-star-o"></i>
                                    </li>
                                </ul><!--<span class="booking-item-rating-number"></span><b></b>-->
                            </div>
                            <h5 class="booking-item-title">Hard Rock Punta Cana Hotel</h5>
                            <p class="booking-item-address"><i class="fa fa-map-marker"></i> Cancun, Mexico</p><small class="booking-item-last-booked">Why's this here?</small>
                            <span class="btn btn-primary aright">Check Rates</span>
                        </div>
                    </div>
                </a>
            </li>
            <li>
                <a class="booking-item" href="/book.html">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="booking-item-img-wrap">
                                <img src="http://resortfilter.com/fedor/img/800x600.png" alt="Image Alternative text" title="hotel 2" />
                                <div class="booking-item-img-num"><i class="fa fa-picture-o"></i>10</div>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="booking-item-rating">
                                <ul class="icon-group booking-item-rating-stars">
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star-o"></i>
                                    </li>
                                </ul><!--<span class="booking-item-rating-number"></span><b></b>-->
                            </div>
                            <h5 class="booking-item-title">Hard Rock Punta Cana Hotel</h5>
                            <p class="booking-item-address"><i class="fa fa-map-marker"></i> Cancun, Mexico</p><small class="booking-item-last-booked">Why's this here?</small>
                            <span class="btn btn-primary aright">Check Rates</span>
                        </div>
                    </div>
                </a>
            </li>
            <li>
                <a class="booking-item" href="/book.html">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="booking-item-img-wrap">
                                <img src="http://resortfilter.com/fedor/img/800x600.png" alt="Image Alternative text" title="hotel 2" />
                                <div class="booking-item-img-num"><i class="fa fa-picture-o"></i>10</div>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="booking-item-rating">
                                <ul class="icon-group booking-item-rating-stars">
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star-o"></i>
                                    </li>
                                </ul><!--<span class="booking-item-rating-number"></span><b></b>-->
                            </div>
                            <h5 class="booking-item-title">Hard Rock Punta Cana Hotel</h5>
                            <p class="booking-item-address"><i class="fa fa-map-marker"></i> Cancun, Mexico</p><small class="booking-item-last-booked">Why's this here?</small>
                            <span class="btn btn-primary aright">Check Rates</span>
                        </div>
                    </div>
                </a>
            </li>
            <li>
                <a class="booking-item" href="/book.html">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="booking-item-img-wrap">
                                <img src="http://resortfilter.com/fedor/img/800x600.png" alt="Image Alternative text" title="hotel 2" />
                                <div class="booking-item-img-num"><i class="fa fa-picture-o"></i>10</div>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="booking-item-rating">
                                <ul class="icon-group booking-item-rating-stars">
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star-o"></i>
                                    </li>
                                </ul><!--<span class="booking-item-rating-number"></span><b></b>-->
                            </div>
                            <h5 class="booking-item-title">Hard Rock Punta Cana Hotel</h5>
                            <p class="booking-item-address"><i class="fa fa-map-marker"></i> Cancun, Mexico</p><small class="booking-item-last-booked">Why's this here?</small>
                            <span class="btn btn-primary aright">Check Rates</span>
                        </div>
                    </div>
                </a>
            </li>
            <li>
                <a class="booking-item" href="/book.html">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="booking-item-img-wrap">
                                <img src="http://resortfilter.com/fedor/img/800x600.png" alt="Image Alternative text" title="hotel 2" />
                                <div class="booking-item-img-num"><i class="fa fa-picture-o"></i>10</div>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="booking-item-rating">
                                <ul class="icon-group booking-item-rating-stars">
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star-o"></i>
                                    </li>
                                </ul><!--<span class="booking-item-rating-number"></span><b></b>-->
                            </div>
                            <h5 class="booking-item-title">Hard Rock Punta Cana Hotel</h5>
                            <p class="booking-item-address"><i class="fa fa-map-marker"></i> Cancun, Mexico</p><small class="booking-item-last-booked">Why's this here?</small>
                            <span class="btn btn-primary aright">Check Rates</span>
                        </div>
                    </div>
                </a>
            </li>
            <li>
                <a class="booking-item" href="/book.html">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="booking-item-img-wrap">
                                <img src="http://resortfilter.com/fedor/img/800x600.png" alt="Image Alternative text" title="hotel 2" />
                                <div class="booking-item-img-num"><i class="fa fa-picture-o"></i>10</div>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="booking-item-rating">
                                <ul class="icon-group booking-item-rating-stars">
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star-o"></i>
                                    </li>
                                </ul><!--<span class="booking-item-rating-number"></span><b></b>-->
                            </div>
                            <h5 class="booking-item-title">Hard Rock Punta Cana Hotel</h5>
                            <p class="booking-item-address"><i class="fa fa-map-marker"></i> Cancun, Mexico</p><small class="booking-item-last-booked">Why's this here?</small>
                            <span class="btn btn-primary aright">Check Rates</span>
                        </div>
                    </div>
                </a>
            </li>
            <li>
                <a class="booking-item" href="/book.html">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="booking-item-img-wrap">
                                <img src="http://resortfilter.com/fedor/img/800x600.png" alt="Image Alternative text" title="hotel 2" />
                                <div class="booking-item-img-num"><i class="fa fa-picture-o"></i>10</div>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="booking-item-rating">
                                <ul class="icon-group booking-item-rating-stars">
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star-o"></i>
                                    </li>
                                </ul><!--<span class="booking-item-rating-number"></span><b></b>-->
                            </div>
                            <h5 class="booking-item-title">Hard Rock Punta Cana Hotel</h5>
                            <p class="booking-item-address"><i class="fa fa-map-marker"></i> Cancun, Mexico</p><small class="booking-item-last-booked">Why's this here?</small>
                            <span class="btn btn-primary aright">Check Rates</span>
                        </div>
                    </div>
                </a>
            </li>
            <li>
                <a class="booking-item" href="/book.html">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="booking-item-img-wrap">
                                <img src="http://resortfilter.com/fedor/img/800x600.png" alt="Image Alternative text" title="hotel 2" />
                                <div class="booking-item-img-num"><i class="fa fa-picture-o"></i>10</div>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="booking-item-rating">
                                <ul class="icon-group booking-item-rating-stars">
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star-o"></i>
                                    </li>
                                </ul><!--<span class="booking-item-rating-number"></span><b></b>-->
                            </div>
                            <h5 class="booking-item-title">Hard Rock Punta Cana Hotel</h5>
                            <p class="booking-item-address"><i class="fa fa-map-marker"></i> Cancun, Mexico</p><small class="booking-item-last-booked">Why's this here?</small>
                            <span class="btn btn-primary aright">Check Rates</span>
                        </div>
                    </div>
                </a>
            </li>
            <li>
                <a class="booking-item" href="/book.html">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="booking-item-img-wrap">
                                <img src="http://resortfilter.com/fedor/img/800x600.png" alt="Image Alternative text" title="hotel 2" />
                                <div class="booking-item-img-num"><i class="fa fa-picture-o"></i>10</div>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="booking-item-rating">
                                <ul class="icon-group booking-item-rating-stars">
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star-o"></i>
                                    </li>
                                </ul><!--<span class="booking-item-rating-number"></span><b></b>-->
                            </div>
                            <h5 class="booking-item-title">Hard Rock Punta Cana Hotel</h5>
                            <p class="booking-item-address"><i class="fa fa-map-marker"></i> Cancun, Mexico</p><small class="booking-item-last-booked">Why's this here?</small>
                            <span class="btn btn-primary aright">Check Rates</span>
                        </div>
                    </div>
                </a>
            </li>
            <li>
                <a class="booking-item" href="/book.html">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="booking-item-img-wrap">
                                <img src="http://resortfilter.com/fedor/img/800x600.png" alt="Image Alternative text" title="hotel 2" />
                                <div class="booking-item-img-num"><i class="fa fa-picture-o"></i>10</div>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="booking-item-rating">
                                <ul class="icon-group booking-item-rating-stars">
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star-o"></i>
                                    </li>
                                </ul><!--<span class="booking-item-rating-number"></span><b></b>-->
                            </div>
                            <h5 class="booking-item-title">Hard Rock Punta Cana Hotel</h5>
                            <p class="booking-item-address"><i class="fa fa-map-marker"></i> Cancun, Mexico</p><small class="booking-item-last-booked">Why's this here?</small>
                            <span class="btn btn-primary aright">Check Rates</span>
                        </div>
                    </div>
                </a>
            </li>
            <a style="margin-left:45%;" class="btn btn-ghost btn-primary">Show More</a>
        </ul>
    </div>
</div>
</body>

<footer id="main-footer">
    <div class="container">
        <div class="row row-wrap">
            <div class="col-md-3">
                <a class="logo" href="index.html">
                    <img src="http://allinclusivez.com/wp-content/uploads/2014/11/Smaller_Logo.png" alt="All Inclusivez Vacation Packages" title="All Inclusivez Inc." />
                </a>
                <p class="mb20">A modern travel agency specializing exclusively in all inclusive vacation packages to Mexico & Caribbean.</p>
                <ul class="list list-horizontal list-space">
                    <li>
                        <a class="fa fa-facebook box-icon-normal round animate-icon-bottom-to-top" href="https://www.facebook.com/allinclusivez"></a>
                    </li>
                    <li>
                        <a class="fa fa-twitter box-icon-normal round animate-icon-bottom-to-top" href="https://twitter.com/allinclusivez"></a>
                    </li>
                    <li>
                        <a class="fa fa-pinterest box-icon-normal round animate-icon-bottom-to-top" href="https://www.pinterest.com/allinclusivez/"></a>
                    </li>
                </ul>
            </div>

            <div class="col-md-3">
                <h4>Newsletter</h4>
                <form>
                    <label>Enter your E-mail Address</label>
                    <input type="text" class="form-control">
                    <p class="mt5"><small>*We Never Send Spam</small>
                    </p>
                    <input type="submit" class="btn btn-primary" value="Subscribe">
                </form>
            </div>
            <div class="col-md-2">
                <ul class="list list-footer">
                    <li><a href="http://allinclusivez.com/mexico-all-inclusive-vacation-packages/">Mexico</a>
                    </li>
                    <li><a href="http://allinclusivez.com/caribbean-all-inclusive-vacation-packages/">Caribbean</a>
                    </li>
                    <li><a href="#">Best Price Guarantee</a>
                    </li>
                    <li><a href="http://allinclusivez.com/terms-and-conditions/">Terms & Conditions</a>
                    </li>
                    <li><a href="http://allinclusivez.com/privacy-and-cookies/">Privacy Policy</a>
                    </li>
                    <li><a href="http://allinclusivez.com/about-us/">About Us</a>
                    </li>
                    <li><a href="http://allinclusivez.com/contact-us/">Contact Us</a>
                    </li>
                </ul>
            </div>
            <div class="col-md-4">
                <h4>Call Us Today</h4>
                <h4><a href="tel:3128807054" class="text-color">(312) 880-7054</a></h4>
                <h4><a href="mailto:support@allinclusivez.com" class="text-color">support@allinclusivez.com</a></h4>
                <p>No Annoying Hold Times</p>
            </div>

        </div>
    </div>
</footer>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script>
    $(' .hotel-star').hover(function () {
                var id  = $(this).data('id');
                $(".hotel-star").addClass('fa-star-o').removeClass('fa-star');
                $.each($(this).closest('.group-star').find('.hotel-star'), function(){
                    if($(this).data('id')>id){
                        return
                    }
                    $(this).addClass('fa-star').removeClass('fa-star-o');
                });
            },
            function () {
                if($('#rating-btn').css('background-color', '#0ebcf2')){
                    return;
                }

                $(".hotel-star").addClass('fa-star-o').removeClass('fa-star');
            });
    $(document).on('click', '#rating-btn', function(){
        $(this).css('background-color', '#0ebcf2')
    });
</script>
</html>