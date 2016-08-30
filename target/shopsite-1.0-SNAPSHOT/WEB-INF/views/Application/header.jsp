<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <title>shopsite</title>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Custom Theme files -->
    <link href="https://p.w3layouts.com/demos/e_shop/web/css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <!-- Custom Theme files -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <script src="https://p.w3layouts.com/demos/e_shop/web/js/simpleCart.min.js"> </script>
    <!-- cart -->
    <link rel="stylesheet" href="https://p.w3layouts.com/demos/e_shop/web/css/flexslider.css" type="text/css" media="screen" />
</head>
<body>
<script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
                (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
    ga('create', 'UA-30027142-1', 'w3layouts.com');
    ga('send', 'pageview');
</script>
<script async type='text/javascript' src='//cdn.fancybar.net/ac/fancybar.js?zoneid=1502&serve=C6ADVKE&placement=w3layouts' id='_fancybar_js'></script>


<!-- header-section-starts -->
<div class="header">
    <div class="header-top-strip">
        <div class="container">
            <div class="header-top-left">
                <ul>
                    <li><a href="https://p.w3layouts.com/demos/e_shop/web/account.html"><span class="glyphicon glyphicon-user"> </span>Login</a></li>
                    <li><a href="https://p.w3layouts.com/demos/e_shop/web/register.html"><span class="glyphicon glyphicon-lock"> </span>Create an Account</a></li>
                </ul>
            </div>
            <div class="header-right">
                <div class="cart box_1">
                    <a href="checkout.html">
                        <h3> <span class="simpleCart_total"> $0.00 </span> (<span id="simpleCart_quantity" class="simpleCart_quantity"> 0 </span>)<img src="https://p.w3layouts.com/demos/e_shop/web/images/bag.png" alt=""></h3>
                    </a>
                    <p><a href="javascript:;" class="simpleCart_empty">Empty cart</a></p>
                    <div class="clearfix"> </div>
                </div>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
