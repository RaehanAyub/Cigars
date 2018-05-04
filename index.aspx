<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Cigars_and_Cigarettes.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Cigars & Cigarettes
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content" runat="server">

   
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <HeaderTemplate><table class="HomeProduct"><tr></table></HeaderTemplate>
            <ItemTemplate>
                 <div class="boxrepeater">
                <td>
                    <br />
                    <br />
                    <a href="<%#Eval("ProductID","Product.aspx?ProductID={0}") %>">
                        
                        <asp:Image ID="ProductImage" runat="server"  ImageUrl='<%# Eval("ProductImage") %>' CssClass="ImageSize" AlternateText='<%# Eval("ProductDescription") %>' Width="200px" Height="200px" />
                    </a>
                    <div class="myproduct">

                        <br />
                        <a class ="ProductName" href ="<%#Eval("ProductID","Product.aspx?ProductID={0}") %>">
                            <%#Eval("ProductName") %> </a>

                    </div>
                    <br />
                    <a class="Price">BND : <%#Eval("Price")%></a><br />
                    <br />
                    <a class="ProductDescription">Description : <%#Eval("ProductDescription") %></a> </td>
                <br />
                <br />
                    <a class="ProductQuantity">Quantity : <%#Eval("ProductQuantity") %></a> </td>

                </td>
                    </div>
            </ItemTemplate>

<FooterTemplate>
    </tr></table>
</FooterTemplate>

        </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" SelectCommand="SELECT TOP 4 * FROM [Product] WHERE ProductQuantity > 0 ORDER BY ProductID DESC"></asp:SqlDataSource>

    

        <br />

    

</asp:Content>