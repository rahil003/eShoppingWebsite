<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="eShoppingWebsite.Order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignUp</title>
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
   
    </div>
     </div>
   </nav>
    <div class="container">
        <div class="col-sm-3">
        </div>
        <div class="col-sm-6">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <asp:Label ID="Name" runat="server" Text=""></asp:Label> </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-sm-12">
                        <div class="form-group">
                                

                            <center>
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <table >
                    <a href="ViewProduct.aspx?PID=<%#Eval("IID") %>">
                    <tr>
                           <td> <img width="300" height="300" src="img/<%#Eval("Image") %> "></td>
                    </tr>
                        <tr>
                            <td> 
                        
                       <b> <%#Eval("IName") %></b></td>
                        </tr>
                    <tr> 
                    <tr>
                        <td>   
                          <%#Eval("Detail") %></td>

                    </tr>

                      <tr>
                        <td>   
                          <%#Eval("Price") %>/-</td>

                    </tr>
                        
                   
                        </a>
                </table>
            </ItemTemplate>




        </asp:DataList>


    </center>



                            </div>
                            <div class="form-group">
                                <label>    Enter Your Address Detail:</label>
                            </div>

                            <div class="form-group">
                                <label>    Full Name:</label>
                                <asp:TextBox ID="txtName" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label>    Mobile number:</label>
                                <asp:TextBox ID="txtMobile" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>

                            
                            <div class="form-group">
                                <label>    House No.:</label>
                                <asp:TextBox ID="txtHouse" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>

                                
                            <div class="form-group">
                                <label>    Area,Colony.:</label>
                                <asp:TextBox ID="txtArea" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label>    City:</label>
                                <asp:TextBox ID="txtCity" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                               
                            <div class="form-group">
                                <label>
                                    State:</label>
                                <asp:TextBox ID="txtState" CssClass="form-control" runat="server" ></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label>    Pincode:</label>
                                <asp:TextBox ID="txtPincode" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>

                     
                    
                            <div class="form-group">
                                <asp:Button ID="Button1" runat="server" Text="Place Order!!!" OnClick="Button1_Click" CssClass="btn btn-primary" />
                            &nbsp;
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

