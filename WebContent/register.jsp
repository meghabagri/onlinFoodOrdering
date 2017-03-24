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
margin-bottom: 20px;
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
                          <h2 class="text-center">Your Details</h2>
                            <div class="panel-body">
                            <form name="myform" class="form" action="register" method="POST">
                                <fieldset>
                                  <center><div class="form-group">
                                    
                                   <div class="col-sm-4"><label>Name</label></div>
                                    <div class="col-sm-8"><input name="name" class="form-control" type="text" required>
                                    </div>
                                    <div class="col-sm-4"><label>Email</label></div>
                                    <div class="col-sm-8"><input  name="email" class="form-control" type="text" required>
                                    </div>
                                    <div class="col-sm-4"><label>Contact</label></div>
                                    <div class="col-sm-8"><input name=contact class="form-control" type="text" required>
                                    </div>                                  
                                    <div class="col-sm-4"><label>Address</label></div>
                                    <div class="col-sm-8"><input name="address" class="form-control" type="text" required>
                                    </div>    
                                    <div class="col-sm-4"><label>Pin Code</label></div>
                                    <div class="col-sm-8"><input  name="pin" class="form-control" type="text" required>
                                    </div>                            
                                  </div>
                                  <div class="col-sm-4"><label># of Items</label></div>
                                    <div class="col-sm-8"><input id="count" name="count" class="form-control" type="text"readonly>
                                    </div>
                                      
                                    <div class="col-sm-4"><label>Total</label></div>
                                    <div class="col-sm-8"><input id="sum" name="sum"  class="form-control" type="text" readonly>
                                    </div>
                                  </center>
                                  <hr>
                                  <div class="form-group">
                                    <center><input class="btn btn-lg btn-primary btn-block" value="Next" type="submit">
                                  	</center>
                                  </div>
                               
                                </fieldset>
                              </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
function goBack(){
	history.go(-1);
}
var sum = localStorage.getItem("sum");
var count = localStorage.getItem("count");
document.getElementById("count").value=count;
document.getElementById("sum").value=sum;
</script>
</body>
</html>
</body>
</html>