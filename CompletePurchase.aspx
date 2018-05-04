<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CompletePurchase.aspx.cs" Inherits="Cigars_and_Cigarettes.CompletePurchase" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading2" runat="server">
    Complete Your Purchase
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content" runat="server">
    
    <asp:Button ID="ButtonConfirm" runat="server" Text="Complete Purchase" OnClick="ButtonConfirm_Click" />
        <asp:Literal ID="literalpurchase" runat="server"></asp:Literal>
   
</asp:Content>
