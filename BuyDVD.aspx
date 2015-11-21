<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="BuyDVD.aspx.cs" Inherits="khoruzhenkoDVD.BuyDVD" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Buy DVD</h2>
    <p>Purchase this DVD here.</p>

    The DVDID is: 
    <asp:Label ID="labelDVDID" runat="server" Text="Label"></asp:Label>
</asp:Content>
