<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.Master" AutoEventWireup="true" CodeBehind="ViewProduct.aspx.cs" Inherits="eShoppingWebsite.ViewProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
#buy:link, #buy:visited {
   display: block;
    width: 105px;
    height: 50px;
    background: #4E9CAF;
    padding: 10px;
    text-align: center;
    border-radius: 5px;
    color: white;
    font-weight: bold;
    line-height: 25px;
}

#buy:hover, #buy:active {
  background-color: darkturquoise;
  text-decoration:none;
}
</style>
    <div>
    <center>
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <table class="">
                    <a href="ViewProduct.aspx?PID=<%#Eval("IID") %>">
                    <tr>
                           <td> <img width="300" height="300" src="img/<%#Eval("Image") %> "></td>
                    </tr>
                        <tr>
                            <td> 
                        
                       <b> <%#Eval("IName") %></td></b>
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
                        
                      <tr>
                        <td>   <a id="buy" href="Order.aspx?PID=<%#Eval("IID") %>">Buy</td>

                          
                    </tr>
                        </a>
                </table>
            </ItemTemplate>




        </asp:DataList>


    </center>
        </div>

</asp:Content>
