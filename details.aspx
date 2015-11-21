<%@ Page Title="DVD Details" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="details.aspx.cs" Inherits="khoruzhenkoDVD.details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>The Details Page</h2>
    <p>View the details of your favorite DVDs.</p>

    The DVDID is: 
    <asp:Label ID="labelDVDID" runat="server" Text="Label"></asp:Label>
</asp:Content>
