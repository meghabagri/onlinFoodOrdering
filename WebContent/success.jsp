<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Delicious</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style type="text/css">
<%@include file="css/bootstrap.min.css" %>
  <%@include file="css/style.css" %>
input[type="text"]{
margin-bottom: 30px;
}
input[type="submit"]{
margin-bottom:10px;
}
h2,h3{margin-top: 40px;}
</style>
</head>
<body>
<hr>
<div class="container">
    <div class="row">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="text-center">
                          <h2><i class="fa fa-shopping-cart" aria-hidden="true" style="font-size:90px;"></i></h2>
                          <h2 class="text-center">Success</h2>
                            <div class="panel-body">
                                <fieldset>
                                  <center><div class="form-group">
                                  <h4>Your table has been booked successfully.<br> Your token number is  <%= request.getAttribute("token")%>
                                  </h4>
                                  <a href="index.jsp"><input class="btn btn-lg btn-primary btn-block" value="Go back" type="button"></a>
                                  </div></center>
                                  <hr>
                                  <div class="form-group">
                                  </div>
                                </fieldset>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>