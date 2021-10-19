<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddItem_admin.aspx.cs" Inherits="eShoppingWebsite.Admin.AddItem_admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <style>
        * {
            box-sizing: border-box;
        }

        body {
            font-family: cursive,Helvetica, sans-serif;
        }

        header {
            background-color: #666;
            padding: 30px;
            text-align: center;
            color: white;
        }

        nav {
            float: left;
            width: 20%;
            height: 300px;
            background: #ccc;
            padding: 20px;
        }

            nav ul {
                list-style-type: none;
                padding: 1;
                display: block;
            }

                nav ul li:hover {
                    background-color: white;
                    color: white;
                    padding: 11px;
                }

        article {
            float: left;
            padding: 20px;
            width: 80%;
            background-color: #f1f1f1;
        }

        section::after {
            content: "";
            display: table;
            clear: both;
        }

        footer {
            background-color: #777;
            padding: 10px;
            text-align: center;
            color: white;
        }

        @media (max-width: 600px) {
            nav, article {
                width: 100%;
                height: auto;
            }
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <header>
                <h2>Welcome Admin!!  </h2>
            </header>
            <section>
                <nav>
                    <ul>
                        <li><a href="AddCategory_admin.aspx">Category</a></li>
                        <li><a href="AddItem_admin.aspx">Item</a></li>
                          <li><a href="ViewOrder.aspx">Orders</a></li>

                        <li><a href="/Logout.aspx">Logout</a></li>
                    </ul>
                </nav>


                <table>
                    <tr>
                        <td>
                            <label>Item Name</label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtItemName" CssClass="form-control" runat="server"></asp:TextBox>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>Description</label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtDesc" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>

                      <tr>
                        <td>
                            <label>Price</label>
                        </td>
                        <td>
                             <asp:TextBox ID="txtPrice" CssClass="form-control" runat="server"></asp:TextBox>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>Quantity</label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtQty" CssClass="form-control" runat="server"></asp:TextBox>

                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>Image</label>
                        </td>
                        <td>
                            <asp:FileUpload ID="FileUpload1" CssClass="form-control" runat="server" />

                        </td>
                    </tr>


                    <tr>
                        <td>
                            <label>Category</label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlCategory" CssClass="form-control" runat="server">
                            </asp:DropDownList>

                        </td>
                    </tr>




                    <tr>
                        <td>
                            <label>Size</label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlsize" CssClass="form-control" runat="server">
                                <asp:ListItem Text="Select Option" Value="0"></asp:ListItem>
                                <asp:ListItem Text="Small " Value="1 "></asp:ListItem>
                                <asp:ListItem Text="Large " Value="2 "></asp:ListItem>
                                <asp:ListItem Text="Smaller " Value="3 "></asp:ListItem>
                                <asp:ListItem Text="xLarge " Value="4 "></asp:ListItem>
                                <asp:ListItem Text="xxLarge " Value="5 "></asp:ListItem>


                            </asp:DropDownList>
                        </td>
                    </tr>


                    <tr>
                        <td>
                            <asp:Button ID="btnAddItem" CssClass="btn btn-success btn-lg" runat="server"
                                Text="ADD ITEM" OnClick="btnAddItem_Click" />
                    </tr>


                </table>


                <div class="">
                    <div class="col-sm-4">
                        <center>

                            <div class="">
                                <asp:GridView ID="GridView1" CssClass="table" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="IID" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                        <asp:BoundField DataField="IID" HeaderText="IID" InsertVisible="False" ReadOnly="True" SortExpression="IID" />
                                        <asp:BoundField DataField="IName" HeaderText="IName" SortExpression="IName" />
                                        <asp:BoundField DataField="Detail" HeaderText="Detail" SortExpression="Detail" />
                                        <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
                                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                                        <asp:BoundField DataField="Qnt" HeaderText="Qnt" SortExpression="Qnt" />
                                        <asp:BoundField DataField="CName" HeaderText="CName" SortExpression="CName" />
                                        <asp:BoundField DataField="Size" HeaderText="Size" SortExpression="Size" />
                                    </Columns>
    <HeaderStyle BackColor="cyan" ForeColor="Black" />

                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShoppingConnectionString %>" DeleteCommand="DELETE FROM [ItemMst] WHERE [IID] = @IID" InsertCommand="INSERT INTO [ItemMst] ([IName], [Detail], [Image], [Price], [Qnt], [CName], , [Size]) VALUES (@IName, @Detail, @Image, @Price, @Qnt, @CName, , @Size)" SelectCommand="SELECT [IID], [IName], [Detail], [Image], [Price], [Qnt], [CName],  [Size] FROM [ItemMst]" UpdateCommand="UPDATE [ItemMst] SET [IName] = @IName, [Detail] = @Detail, [Image] = @Image, [Price] = @Price, [Qnt] = @Qnt, [CName] = @CName , [Size] = @Size WHERE [IID] = @IID">
                                    <DeleteParameters>
                                        <asp:Parameter Name="IID" Type="Int32" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="IName" Type="String" />
                                        <asp:Parameter Name="Detail" Type="String" />
                                        <asp:Parameter Name="Image" Type="String" />
                                        <asp:Parameter Name="Price" Type="Double" />
                                        <asp:Parameter Name="Qnt" Type="Int32" />
                                        <asp:Parameter Name="CName" Type="String" />
                                        <asp:Parameter Name="Size" Type="Int32" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="IName" Type="String" />
                                        <asp:Parameter Name="Detail" Type="String" />
                                        <asp:Parameter Name="Image" Type="String" />
                                        <asp:Parameter Name="Price" Type="Double" />
                                        <asp:Parameter Name="Qnt" Type="Int32" />
                                        <asp:Parameter Name="CName" Type="String" />
                                        <asp:Parameter Name="Size" Type="Int32" />
                                        <asp:Parameter Name="IID" Type="Int32" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                            </div>
                    </div>
                    </center>
                </div>
        </div>
        </div>

            <footer>
                <p>copyright@2021</p>
            </footer>
        </div>
    </form>
</body>
</html>

