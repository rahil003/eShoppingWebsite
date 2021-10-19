<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddCategory_admin.aspx.cs" Inherits="eShoppingWebsite.Admin.AddCategory_admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
   <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
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
            background-color: blue;
           
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
      <li><a href="#" >Category</a></li>
      <li><a href="AddItem_admin.aspx">Item</a></li>
        <li><a href="ViewOrder.aspx">Orders</a></li>
      <li><a href="/Logout.aspx">Logout</a></li>
    </ul>
  </nav>
  <div class="alert">
<div class="row">

<div class="col-sm-4">
<div class="form-group">

<label>Add Category</label>
    <asp:TextBox ID="txtCategory" CssClass="form-control" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="btnAdd" CssClass="btn btn-primary" runat="server" 
        Text="ADD" onclick="btnAdd_Click"  />




</div>
    <div class="col-sm-8">
<div class="form-group">
    <asp:GridView ID="GridView1" CssClass="table table-hover" runat="server" 
        AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="CID" 
        DataSourceID="SqlDataSource1">

        <Columns  >
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True"  />
            <asp:BoundField DataField="CID" HeaderText="CID" InsertVisible="False" 
                ReadOnly="True" SortExpression="CID" />
            <asp:BoundField DataField="CName" HeaderText="CName" SortExpression="CName" />
        </Columns>

    <HeaderStyle BackColor="cyan" ForeColor="Black" />
    
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ShoppingConnectionString %>" 
        DeleteCommand="DELETE FROM [CateMst] WHERE [CID] = @CID" 
        InsertCommand="INSERT INTO [CateMst] ([CName]) VALUES (@CName)" 
        SelectCommand="SELECT * FROM [CateMst]" 
        UpdateCommand="UPDATE [CateMst] SET [CName] = @CName WHERE [CID] = @CID">
        <DeleteParameters>
            <asp:Parameter Name="CID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CName" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CName" Type="String" />
            <asp:Parameter Name="CID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</div>

</div>
</div>


</div>

<div class="row">



<div class="col-sm-2"></div>

</div>
</div>
</section>
        <footer>
  <p>copyright@2021</p>
</footer>
    </div>
    </form>
</body>
</html>
