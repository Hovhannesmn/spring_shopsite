<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="./Application/header.jsp"></jsp:include>

<!-- header-section-ends -->
<div class="banner-top">
    <div class="container">
        <nav class="navbar navbar-default" role="navigation">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <div class="logo">
                    <h1><a href="index.html"><span>E</span> -Shop</a></h1>
                </div>
            </div>
            <!--/.navbar-header-->

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li><a href="index.html">Home</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Men <b class="caret"></b></a>
                        <ul class="dropdown-menu multi-column columns-3">
                            <div class="row">
                                <div class="col-sm-4">
                                    <ul class="multi-column-dropdown">
                                        <h6>NEW IN</h6>
                                        <li><a href="products.html">New In Clothing</a></li>
                                        <li><a href="products.html">New In Bags</a></li>
                                        <li><a href="products.html">New In Shoes</a></li>
                                        <li><a href="products.html">New In Watches</a></li>
                                        <li><a href="products.html">New In Grooming</a></li>
                                    </ul>
                                </div>
                                <c:forEach items="${catsub.keySet()}" var="item">

                                <div class="col-sm-4">
                                    <ul class="multi-column-dropdown">
                                        <%--<h6>${catsub.get(0)}</h6>--%>
                                            <%--for ( ArrayList key : data.keySet() ) {--%>
                                            <%--System.out.println( key.get(0) + " key get0");--%>
                                            <h6>${item.get(1)} </h6>
                                            <c:forEach items="${catsub.get(item)}" var="item2">

                                            <li><a href="products.html">${item2}</a></li>

                                            </c:forEach>


                                    </ul>
                                </div>
                                </c:forEach>

                            <%--<div class="col-sm-4">--%>
                                    <%--<ul class="multi-column-dropdown">--%>
                                        <%--<h6>WATCHES</h6>--%>
                                        <%--&lt;%&ndash;<c:forEach items="${subcategories2}" var="item">&ndash;%&gt;--%>

                                            <%--&lt;%&ndash;<li><a href="products.html">${item}</a></li>&ndash;%&gt;--%>
                                        <%--&lt;%&ndash;</c:forEach>&ndash;%&gt;--%>
                                    <%--</ul>--%>
                                <%--</div>--%>
                                <div class="clearfix"></div>
                            </div>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">women <b class="caret"></b></a>
                        <ul class="dropdown-menu multi-column columns-3">
                            <div class="row">
                                <div class="col-sm-4">
                                    <ul class="multi-column-dropdown">
                                        <h6>NEW IN</h6>
                                        <li><a href="products.html">New In Clothing</a></li>
                                        <li><a href="products.html">New In Bags</a></li>
                                        <li><a href="products.html">New In Shoes</a></li>
                                        <li><a href="products.html">New In Watches</a></li>
                                        <li><a href="products.html">New In Beauty</a></li>
                                    </ul>
                                </div>
                                <div class="col-sm-4">
                                    <ul class="multi-column-dropdown">
                                        <h6>CLOTHING</h6>
                                        <li><a href="products.html">Polos & Tees</a></li>
                                    </ul>
                                </div>
                                <div class="col-sm-4">
                                    <ul class="multi-column-dropdown">
                                        <h6>WATCHES</h6>
                                        <li><a href="products.html">Analog</a></li>
                                        <li><a href="products.html">Chronograph</a></li>
                                        <li><a href="products.html">Digital</a></li>
                                        <li><a href="products.html">Watch Cases</a></li>
                                    </ul>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">kids <b class="caret"></b></a>
                        <ul class="dropdown-menu multi-column columns-2">
                            <div class="row">
                                <div class="col-sm-6">
                                    <ul class="multi-column-dropdown">
                                        <h6>NEW IN</h6>
                                        <li><a href="products.html">New In Boys Clothing</a></li>
                                        <li><a href="products.html">New In Girls Clothing</a></li>
                                        <li><a href="products.html">New In Boys Shoes</a></li>
                                        <li><a href="products.html">New In Girls Shoes</a></li>
                                    </ul>
                                </div>
                                <div class="col-sm-6">
                                    <ul class="multi-column-dropdown">
                                        <h6>ACCESSORIES</h6>
                                        <li><a href="products.html">Bags</a></li>
                                        <li><a href="products.html">Watches</a></li>
                                        <li><a href="products.html">Sun Glasses</a></li>
                                        <li><a href="products.html">Jewellery</a></li>
                                    </ul>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </ul>
                    </li>
                    <li><a href="typography.html">TYPO</a></li>
                    <li><a href="contact.html">CONTACT</a></li>
                </ul>
            </div>
            <!--/.navbar-collapse-->
        </nav>
        <!--/.navbar-->
    </div>
</div>
<div class="banner">
    <div class="container">
        <div class="banner-bottom">
            <div class="banner-bottom-left">
                <h2>B<br>U<br>Y</h2>
            </div>
            <div class="banner-bottom-right">
                <div  class="callbacks_container">
                    <ul class="rslides" id="slider4">
                        <li>
                            <div class="banner-info">
                                <h3>Smart But Casual</h3>
                                <p>Start your shopping here...</p>
                            </div>
                        </li>
                        <li>
                            <div class="banner-info">
                                <h3>Shop Online</h3>
                                <p>Start your shopping here...</p>
                            </div>
                        </li>
                        <li>
                            <div class="banner-info">
                                <h3>Pack your Bag</h3>
                                <p>Start your shopping here...</p>
                            </div>
                        </li>
                    </ul>
                </div>
                <!--banner-->
                <script src="https://p.w3layouts.com/demos/e_shop/web/js/responsiveslides.min.js"></script>
                <script>
                    $(function () {
                        // Slideshow 4
                        $("#slider4").responsiveSlides({
                            auto: true,
                            pager:true,
                            nav:false,
                            speed: 500,
                            namespace: "callbacks",
                            before: function () {
                                $('.events').append("<li>before event fired.</li>");
                            },
                            after: function () {
                                $('.events').append("<li>after event fired.</li>");
                            }
                        });

                    });
                </script>
            </div>
            <div class="clearfix"> </div>
        </div>
        <div class="shop">
            <a href="single.html">SHOP COLLECTION NOW</a>
        </div>
    </div>
</div>

<div class="container">
    <div class="main-content">
        <div class="products-grid">


            <c:forEach items="${products.keySet()}" var="key">
                <div class="col-md-4 product simpleCart_shelfItem text-center">
                <a href="/product/${products.get(key).id}"><img src="${products.get(key).image}" alt="" /></a>
                <div class="mask">
                    <a href="single.html">Quick View</a>
                </div>
                <a class="product_name" href="/product/${products.get(key).id}">${products.get(key).name} </a>
                <p><a class="item_add" href="/product/${products.get(key).id}"><i></i> <span class="item_price">${products.get(key).price} </span></a></p>
            </div>
                </c:forEach>


            <div class="clearfix"></div>
        </div>
    </div>

</div>
<jsp:include page="./Application/footer.jsp"></jsp:include>

