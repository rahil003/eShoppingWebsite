<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewOrder.aspx.cs" Inherits="eShoppingWebsite.Admin.ViewOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        *
        {
            box-sizing: border-box;
        }
        
        body
        {
            font-family: cursive ,Helvetica, sans-serif;
        }
        
        header
        {
            background-color: #666;
            padding: 30px;
            text-align: center;
            color: white;
        }
        
        nav
        {
            float: left;
            width: 20%;
            height: 300px;
            background: #ccc;
            padding: 20px;
        }
        nav ul
        {
            list-style-type: none;
            padding: 1;
            display: block;
        }
        nav ul li:hover
        {
            background-color: white;
            color: white;
            padding:11px;
        }
        article
        {
            float: left;
            padding: 20px;
            width: 80%;
            background-color: #f1f1f1;
           
        }
        
        section::after
        {
            content: "";
            display: table;
            clear: both;
        }
        
        footer
        {
            background-color: #777;
            padding: 10px;
            text-align: center;
            color: white;
        }
        
        @media (max-width: 600px)
        {
            nav, article
            {
                width: 100%;
                height: auto;
            }
        }
    </style>
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <header><h2>Welcome Admin!!  </h2> </header>
        <section>
  <nav>
    <ul>
      <li><a href="AddCategory_admin.aspx" >Category</a></li>
      <li><a href="AddItem_admin.aspx">Item</a></li>
     
      <li><a href="/Logout.aspx">Logout</a></li>
    </ul>
  </nav>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="IID" HeaderText="IID" InsertVisible="False" ReadOnly="True" SortExpression="IID" />
                    <asp:BoundField DataField="Pid" HeaderText="Pid" SortExpression="Pid" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                    <asp:BoundField DataField="HouseNo" HeaderText="HouseNo" SortExpression="HouseNo" />
                    <asp:BoundField DataField="Area" HeaderText="Area" SortExpression="Area" />
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                    <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                    <asp:BoundField DataField="Pincode" HeaderText="Pincode" SortExpression="Pincode" />
                </Columns>
    <HeaderStyle BackColor="cyan" ForeColor="Black" />

            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShoppingConnectionString %>" SelectCommand="SELECT * FROM [OrderUser]"></asp:SqlDataSource>
</section>

        
        <footer>
  <p>copyright@2021</p>
</footer>
    </div>
    </form>
</body>
</html>
