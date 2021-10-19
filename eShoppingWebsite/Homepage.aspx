<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="eShoppingWebsite.Homepage" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>eShopping</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <style>
   
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }

    .carousel-inner img {
      width: 100%; /* Set width to 100% */
      min-height: 200px;
    }

    
    @media (max-width: 600px) {
      .carousel-caption {
        display: none; 
      }
    }
  </style>

</head>
<body>
    <form id="form1" runat="server">
    <div class="jumbotron text-center" style="margin-bottom: 0;background-color:deepskyblue">
        <h1>
            eShooping </h1>
        <p>
            The Real Indian Online Shopping Site!!!</p>
    </div>
    <%--//Menu --%>
    <nav class="navbar navbar-inverse">
    <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="Homepage.aspx">Fashion</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="Homepage.aspx">Home</a></li>
        <li><a href="ViewProduct.aspx">Products</a></li>
        <li><a href="About.aspx">About Us</a></li>        


      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="Login_User.aspx"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
        <li><a href="Signup.aspx"><span class="glyphicon glyphicon-log-in"></span> Signup</a></li>

      </ul>
    </div>
     </div>
   </nav>
        
    <div class="container">
        
        <div class="row">
            <div class="col-sm-8">
                <div id="myCarousel" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                    </ol>
                    <!-- Wrapper for slides -->
                   
                    <div class="carousel-inner" role="listbox">
                        <div class="item active">
                            <img src="Images/onlineshop1.jpg" width="700px" height="400px" alt="Image">
                            <div class="carousel-caption">
                                
                            </div>
                        </div>
                        <div class="item">
                            <img src="Images/online2.jpg" width="700px" height="400px" alt="Image">
                            <div class="carousel-caption">
                                <h3>
                                  
                                <p>
                                   
                            </div>
                        </div>
                        <div class="item">
                            <img src="Images/online3.png" width="700px" height="400px" alt="Image">
                            <div class="carousel-caption">
                              
                                    
                            </div>
                        </div>
                    </div>
                       
                    <!-- Left and right controls -->
                    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span><span class="sr-only">
                            Previous</span> </a><a class="right carousel-control" href="#myCarousel" role="button"
                                data-slide="next"><span class="glyphicon glyphicon-chevron-right" aria-hidden="true">
                                </span><span class="sr-only">Next</span> </a>
                </div>
            </div>
       
        </div>
      
    </div>
    <div class="container text-center">
        <h3 class="alert-danger">
            Products</h3>
        <br>
        <div class="row">
            <div class="col-sm-3">
                <img src="Images/pro1.jpg" width="200px" height="200px" class="img-responsive" style="width: 100%"
                    alt="Image"/>
               
            </div>
            <div class="col-sm-3">
                <img src="Images/pro2.jpg"   width="200px" height="200px" class="img-responsive" style="width: 100%"
                    alt="Image">
             
            </div>

            <div class="col-sm-3">
                <img src="Images/pro3.jpg"   width="200px" height="200px" class="img-responsive" style="width: 100%"
                    alt="Image">
             
            </div>
            <div class="col-sm-3">
                <img src="Images/pro4.jpg"   width="200px" height="150px" class="img-responsive" 
                    alt="Image">
             
            </div>
   
        </div>
        <hr />
    </div>
    
    <br>
    <footer class="container-fluid text-center jumbotron">
       <p>copyright@2021</p>
   </footer>
    </form>
</body>
</html>
