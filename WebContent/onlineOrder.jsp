<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">    
<title>Delicious</title>
<style type="text/css">
  <%@include file="css/shop-homepage.css" %>
  <%@include file="css/bootstrap.min.css" %>
</style>
</head>

<body>


    <!-- Page Content -->
    <div class="container">

        <div class="row">

            <div class="col-md-3">
                <p class="lead">Category</p>
                <div class="list-group">
                    <a href="#one" class="list-group-item" >Vegetarian</a>
                    <a href="#two" class="list-group-item"> Non-Vegetarian</a>
                    <a href="#three" class="list-group-item">Beverages</a>
                </div>
    <i class="fa fa-shopping-cart" aria-hidden="true" style="font-size:40px;"> </i><br> 
<b style="font-size:20px;">Item(s) - </b><b><span style="font-size:20px;" id="items"></span></b>
<br><b style="font-size:20px;">Cart Total - </b><span style="font-size:20px;" id="cartPrice"></span>
<br>
   <a href="second.jsp">
<button type="button" class="btn btn-primary btn-sm" onClick="cartTotal()">Check out</button></a>
</div>

<script type="text/javascript">
$('a[href*="#"]:not([href="#"])').click(function() {
  if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') && location.hostname == this.hostname) {
    var target = $(this.hash);
    target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
    if (target.length) {
      $('html, body').animate({
        scrollTop: target.offset().top
      }, 1000);
      return false;
    }
  }
});
</script>
            <div class="col-md-9">

                <div class="row carousel-holder">

                    <div class="col-md-12">
                        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="item active">
                                    <img class="slide-image" src="img/scroll1.jpg" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="img/scroll2.jpg" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="img/scroll3.jpg" alt="">
                                </div>
                            </div>
                            <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left"></span>
                            </a>
                            <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right"></span>
                            </a>
                        </div>
                    </div>

                </div>

                <div class="row">
                    <center><h3><b>Vegetarian</b></h3></center>
                    <div id="one"class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail"> 
                            <img src="img/THALI.jpg" alt="">
                            <div class="caption">
                                <h4 class="pull-right"><p >250</p></h4>
                                <h4><a href="#">Dil Bahar Thali</a>
                                </h4>
                            </div>
                            <div class="ratings">
                                <p><span class="">
    <button type="button" class="btn btn-primary btn-sm" onclick="addToCart(250)">Add to cart</button>
<button type="button" class="btn btn-primary btn-sm" onclick="addToCart(250)">+</button><button type="button" class="btn btn-primary btn-sm" onclick="deleteFromCart(250)">-</button></span></p>
                            </div>
                        </div>
                    </div>

                     <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img src="img/res01.jpg" alt="">
                            <div class="caption">
                                <h4 class="pull-right"><p>380</p></h4>
                                <h4><a href="#">Luft-e-kabab</a>
                                </h4>
                            </div>
                            <div class="ratings">
                                <p>
<span class=""><button type="button" class="btn btn-primary btn-sm" onclick="addToCart(358)">Add to cart</button>
<button type="button" class="btn btn-primary btn-sm" onclick="addToCart(358)">+</button><button type="button" class="btn btn-primary btn-sm" onclick="deleteFromCart(358)">-</button></span>
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img src="img/res02.jpg" alt="">
                            <div class="caption">
                                <h4 class="pull-right"><p>200</p></h4>
                                <h4><a href="#">Biryani</a>
                                </h4>
                            </div>
                            <div class="ratings">
                                <p>
<span class=""><button type="button" class="btn btn-primary btn-sm" onclick="addToCart(200)">Add to cart</button>
    <button type="button" class="btn btn-primary btn-sm" onclick="addToCart(200)">+</button><button type="button" class="btn btn-primary btn-sm" onclick="deleteFromCart(200)">-</button>
</span>
                                </p>
                            </div>
                        </div>
                    </div>

                   <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img src="img/lutf1.jpg" alt="">
                            <div class="caption">
                                <h4 class="pull-right"><p>180</p></h4>
                                <h4><a href="#">Tandoori Platter</a>
                                </h4>
                            </div>
                            <div class="ratings">
                                <p>
<span class=""><button type="button" class="btn btn-primary btn-sm" onclick="addToCart(180)">Add to cart</button>
    <button type="button" class="btn btn-primary btn-sm" onclick="addToCart(180)">+</button><button type="button" class="btn btn-primary btn-sm" onclick="deleteFromCart(180)">-</button>
</span>
                                </p>
                            </div>
                        </div>
                    </div>

                   <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img src="img/Dal.jpg" alt="" style="max-height:170px;">
                            <div class="caption">
                                <h4 class="pull-right"><p>150</p></h4>
                                <h4><a href="#">Dal Makhni</a>
                                </h4>
                            </div>
                            <div class="ratings">
                                <p>
<span class=""><button type="button" class="btn btn-primary btn-sm" onclick="addToCart(450)">Add to cart</button>
<button type="button" class="btn btn-primary btn-sm" onclick="addToCart(450)">+</button><button type="button" class="btn btn-primary btn-sm" onclick="deleteFromCart(450)">-</button></span>
                                </p>
                            </div>
                        </div>
                    </div>

<div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img src="img/paneer.jpg" alt="" style="max-height:170px;">
                            <div class="caption">
                                <h4 class="pull-right"><p >120</p></h4>
                                <h4><a href="#">Paneer Do pyaaza</a>
                                </h4>
                            </div>
                            <div class="ratings">
                                <p>
<span class=""><button type="button" class="btn btn-primary btn-sm" onclick="addToCart(120)">Add to cart</button>
<button type="button" class="btn btn-primary btn-sm" onclick="addToCart(120)">+</button><button type="button" class="btn btn-primary btn-sm" onclick="120">-</button></span>
                                </p>
                            </div>
                        </div>
                    </div>
                    <center><h3><b>Non-Vegetarian</b></h3></center>

                       <div id="two" class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img src="img/nonVegThali.jpg" alt="" style="max-height:150px;">
                            <div class="caption">
                                <h4 class="pull-right"><p>150</p></h4>
                                <h4><a href="#">Non-Veg Platter</a>
                                </h4>
                            </div>
                            <div class="ratings">
                                <p>
<span class=""><button type="button" class="btn btn-primary btn-sm" onclick="addToCart(150)">Add to cart</button>
<button type="button" class="btn btn-primary btn-sm" onclick="addToCart(150)">+</button><button type="button" class="btn btn-primary btn-sm" onclick="deleteFromCart(150)">-</button></span>
                                </p>
                            </div>
                        </div>
                    </div>
                   <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img src="img/muttonDoPyaaza.jpg" alt="">
                            <div class="caption">
                                <h4 class="pull-right"><p>190</p></h4>
                                <h4><a href="#">Mutton Do Pyaaza</a>
                                </h4>
                            </div>
                            <div class="ratings">
                                <p>
<span class=""><button type="button" class="btn btn-primary btn-sm" onclick="addToCart(90)">Add to cart</button>
<button type="button" class="btn btn-primary btn-sm" onclick="addToCart(90)">+</button><button type="button" class="btn btn-primary btn-sm" onclick="deleteFromCart(90)">-</button></span>
                                </p>
                            </div>
                        </div>
                    </div>
<div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img src="img/chickenTikka.jpg" alt="" style="max-height:150px;">
                            <div class="caption">
                                <h4 class="pull-right"><p >110</p></h4>
                                <h4><a href="#">Chicken Tikka</a>
                                </h4>
                            </div>
                            <div class="ratings">
                                <p>
<span class=""><button type="button" class="btn btn-primary btn-sm" onclick="addToCart(110)">Add to cart</button>
<button type="button" class="btn btn-primary btn-sm" onclick="addToCart(110)">+</button><button type="button" class="btn btn-primary btn-sm" onclick="deleteFromCart(110)">-</button></span>
                                </p>
                            </div>
                        </div>
                    </div>
<div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img src="img/nonVegBiryani.jpg" alt="" style="max-height:143px;">
                            <div class="caption">
                                <h4 class="pull-right"><p>160</p></h4>
                                <h4><a href="#">Non Veg Biryani</a>
                                </h4>
                            </div>
                            <div class="ratings">
                                <p>
<span class=""><button type="button" class="btn btn-primary btn-sm" onclick="addToCart(60)">Add to cart</button>
<button type="button" class="btn btn-primary btn-sm" onclick="addToCart(60)">+</button><button type="button" class="btn btn-primary btn-sm" onclick="deleteFromCart(60)">-</button></span>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img src="img/fishCurry.jpeg" alt="" style="max-height:143px;">
                            <div class="caption">
                                <h4 class="pull-right"><p>95</p></h4>
                                <h4><a href="#">Fish Curry</a>
                                </h4>
                            </div>
                            <div class="ratings">
                                <p>
<span class=""><button type="button" class="btn btn-primary btn-sm" onclick="addToCart(95)">Add to cart</button>
<button type="button" class="btn btn-primary btn-sm" onclick="addToCart(95)">+</button><button type="button" class="btn btn-primary btn-sm" onclick="deleteFromCart(95)">-</button></span>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img src="img/pepper.jpg" alt="">
                            <div class="caption">
                                <h4 class="pull-right"><p>175</p></h4>
                                <h4><a href="#">Pepper Chicken</a>
                                </h4>
                            </div>
                            <div class="ratings">
                                <p>
<span class=""><button type="button" class="btn btn-primary btn-sm" onclick="addToCart(175)">Add to cart</button>
<button type="button" class="btn btn-primary btn-sm" onclick="addToCart(175)">+</button><button type="button" class="btn btn-primary btn-sm" onclick="deleteFromCart(175)">-</button></span>
                                </p>
                            </div>
                        </div>
                    </div>
                    <center><h3><b>Beverages</b></h3></center>

                   <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img src="img/mojito.jpg" alt="">
                            <div class="caption">
                                <h4 class="pull-right"><p>70</p></h4>
                                <h4><a href="#">Mojito</a>
                                </h4>
                            </div>
                            <div class="ratings">
                                <p>
<span class=""><button type="button" class="btn btn-primary btn-sm" onclick="addToCart(70)">Add to cart</button>
<button type="button" class="btn btn-primary btn-sm" onclick="addToCart(70)">+</button><button type="button" class="btn btn-primary btn-sm" onclick="deleteFromCart(70)">-</button></span>
                                </p>
                            </div>
                        </div>
                    </div>
                   <div id="three"class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img src="img/beverages2.jpg" alt="" style="max-height:170px;">
                            <div class="caption">
                                <h4 class="pull-right"><p>120</p></h4>
                                <h4><a href="#">Latte</a>
                                </h4>
                            </div>
                            <div class="ratings">
                                <p>
<span class=""><button type="button" class="btn btn-primary btn-sm" onclick="addToCart(120)">Add to cart</button>
<button type="button" class="btn btn-primary btn-sm" onclick="addToCart(120)">+</button><button type="button" class="btn btn-primary btn-sm" onclick="deleteFromCart(120)">-</button></span>
                                </p>
                            </div>
                        </div>
                    </div><div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img src="img/beverages1.jpg" alt="">
                            <div class="caption">
                                <h4 class="pull-right"><p>150</p></h4>
                                <h4><a href="#">Butterscotch Milkshake</a>
                                </h4>
                            </div>
                            <div class="ratings">
                                <p>
<span class=""><button type="button" class="btn btn-primary btn-sm" onclick="addToCart(150)">Add to cart</button>
<button type="button" class="btn btn-primary btn-sm" onclick="addToCart(150)">+</button><button type="button" class="btn btn-primary btn-sm" onclick="deleteFromCart(150)">-</button></span>
                                </p>
                            </div>
                        </div>
                    </div>
                    
                </div>

            </div>

        </div>

    </div>
    <!-- /.container -->

    <div class="container">

        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
               
            </div>
        </footer>

    </div>
<script type="text/javascript">
    var sum=0,count=0;
function addToCart(price){
    var p=price;
    p=parseInt(p);
    sum=sum+p;
    count=count+1;
    document.getElementById("items").innerHTML=count;
     document.getElementById("cartPrice").innerHTML=sum;
}
function deleteFromCart(price){
    var p=price;
    p=parseInt(p);
    if(sum>0&&count>0){
    sum=sum-p;
    count=count-1;
    document.getElementById("items").innerHTML=count;
     document.getElementById("cartPrice").innerHTML=sum; 
    }
}
function cartTotal(){
	localStorage.setItem("count",count);
	localStorage.setItem("sum",sum);
}

</script>

    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</body>

</html>
