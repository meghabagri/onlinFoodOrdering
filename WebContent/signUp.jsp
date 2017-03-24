<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Delicious</title>
    <meta name="description" content="Free Bootstrap Theme by BootstrapMade.com">
    <meta name="keywords" content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">
    
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Satisfy|Bree+Serif|Candal|PT+Sans">
 <style type="text/css">
  <%@include file="css/font-awesome.min.css" %>
  <%@include file="css/bootstrap.min.css" %>
  <%@include file="css/style.css" %>
</style>
    <style type="text/css">
        #banner{min-height:662px;}
        .bg-color{
    background-color: RGBA(0, 0, 0, 0.61);
    min-height: 662px;}
 
     h2{
        color: white;
        font-family: Comic Sans MS;
        font-size: 60px;
        text-align: center;
         text-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
     }
 input[type=text] ,input[type=email], input[type=password] {
    width: 30%;
    padding: 12px 20px;
    margin: 8px 170px;
    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 4px;
    font-size: 16px;
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);}

    input[type=submit],input[type=reset]{
     width: 30%;
    padding: 7px 20px;
    margin: 8px 170px;
    color: white;
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
    font-family: Comic Sans MS;
    font-size: 20px;
    text-align: center;
    }
    
    a{
        text-decoration: none;
        color: white;
        font-family: comic Sans MS;
    }

    </style>
  </head>
  <body>
    <section id="banner">
      <div class="bg-color">
        <header id="header">
        
        </header>
        <div class="container">
        <div class="row">
          <div class="inner text-center">
            <h1 class="logo-name">Sign Up</h1>
            <p style="font-size:15px;">Please include a capital letter and a numeric character in your password. Do not include any spacial characters.</p>

  <div id="box">
        <form action="signup" method="post" name="form" >
        <input type="text" placeholder="Username" name="username" Required Autofocus><br>
        <input type="email" placeholder="email" name="email" Required Autofocus><br>
        <input type="password" placeholder="password" name="password" Required Autofocus><br>
        <input type="password" placeholder="Confirm Password" name="cpassword" Required Autofocus><br>
        <input type="submit" value="Sign Up" class="btn btn-lg btn-warning" onClick="checkForm(form)"><br>
        <a href="login.jsp">Login</a>
    </form>
</div>
        </div>
        </div>
      </div>
    </section>
    <script type="text/javascript">
    
 function checkForm(form)
  {
    if(form.password.value != "") {
      if(form.password.value.length < 6) {
        alert("Error: Password must contain at least six characters!");
        form.password.focus();
        return false;
      }
      if(form.password.value != "" && form.password.value == form.cpassword.value) {
      if(form.password.value.length < 6) {
        alert("Error: Password must contain at least six characters!");
        form.password.focus();
        return false;
      }
      if(form.password.value == form.name.value) {
        alert("Error: Password must be different from your name!");
        form.password.focus();
        return false;
      }
      re = /[0-9]/;
      if(!re.test(form.password.value)) {
        alert("Error: password must contain at least one number (0-9)!");
        form.password.focus();
        return false;
      }
      re = /[a-z]/;
      if(!re.test(form.password.value)) {
        alert("Error: password must contain at least one lowercase letter (a-z)!");
        form.password.focus();
        return false;
      }
      re = /[A-Z]/;
      if(!re.test(form.password.value)) {
        alert("Error: password must contain at least one uppercase letter (A-Z)!");
        form.password.focus();
        return false;
      }
    } 
      else {
      alert("Error: Please check that you've entered and confirmed your password!");
      form.password.focus();
      return false;
    }
    return true;
  }
  }
  </script>
  </body>
  </html>