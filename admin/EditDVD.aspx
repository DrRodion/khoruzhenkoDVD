<%@ Page Title="Edit DVD" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="EditDVD.aspx.cs" Inherits="khoruzhenkoDVD.admin.EditDVD" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Button ID="btnLogout" runat="server" Font-Bold="True" OnClick="btnLogout_Click" Text="Log out" />
    <h2>Edit DVD</h2>
    <p>On this page, you can edit DVDs.</p>

    <asp:Label ID="Label1" runat="server" Text="Select a DVD to update:"></asp:Label>
    <br />
    <asp:DropDownList ID="dvdDropdown" runat="server" Width="200px">
    </asp:DropDownList>
    <asp:Button ID="btnSelect" runat="server" OnClick="btnSelect_Click" Text="Select" />

    <br /><br />
    <asp:Label ID="Label2" CssClass="wideLabel" runat="server" Text="DVD Title:"></asp:Label>
    <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label3" CssClass="wideLabel" runat="server" Text="DVD Artist:"></asp:Label>
    <asp:TextBox ID="txtArtist" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label4" CssClass="wideLabel" runat="server" Text="DVD Rating:"></asp:Label>
    <asp:TextBox ID="txtRating" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label5" CssClass="wideLabel" runat="server" Text="DVD Price:"></asp:Label>
    <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>

    <br /><br />
    <asp:Button ID="btnUpdate" runat="server" Text="Update DVD" Enabled="False" OnClick="btnUpdate_Click" />
    &nbsp;
    <asp:Button ID="btnDelete" runat="server" Text="Delete DVD" Enabled="False" OnClick="btnDelete_Click" />

</asp:Content>
