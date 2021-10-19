﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login_User.aspx.cs" Inherits="eShoppingWebsite.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
        footer
        {
            background-color: #f2f2f2;
            padding: 25px;
        }
        
        .carousel-inner img
        {
            width: 100%; /* Set width to 100% */
            min-height: 200px;
        }
        
        
        @media (max-width: 600px)
        {
            .carousel-caption
            {
                display: none;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="jumbotron text-center" style="margin-bottom: 0; background-color: deepskyblue">
        <h1>
            eShopping</h1>
        <p>
            The Real Indian Online Shopping Site!</p>
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
        <li><a href="ViewProduct.aspx">Product</a></li>
        <li><a href="About.aspx">About Us</a></li>        

      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="Signup.aspx"><span class="glyphicon glyphicon-log-in"></span> Signup</a></li>
      </ul>
    </div>
     </div>
   </nav>
    <div class="container">
        <div class="col-sm-3">
        </div>
        <div class="col-sm-6">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    Login</div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="form-group">
                                <label>
                                    UserID:</label>
                                <asp:TextBox ID="txtuserid" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label>
                                    Password:</label>
                                <asp:TextBox ID="txtpass" CssClass="form-control" TextMode="Password" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Button ID="btnLogin" CssClass="btn btn-success" runat="server" Text="Login" OnClick="btnLogin_Click" />
                                <asp:Button ID="btnCancel" CssClass="btn btn-danger" runat="server" Text="Cancel" OnClick="btnCancel_Click" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel-footer">
                </div>
            </div>
        </div>
        <div class="col-sm-3">
        </div>
    </div>

    <br>
    <footer class="container-fluid text-center jumbotron">
       <p>copyright@2021</p>
   </footer>
    </form>
</body>
</html>

