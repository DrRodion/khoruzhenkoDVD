<%@ Page Title="Add DVD" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddDVD.aspx.cs" Inherits="khoruzhenkoDVD.admin.AddDVD" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Add DVD</h2>
    <p>On this page, you can add DVDs to the database. Enter DVD information and press the 'Add DVD' button.</p>

    <asp:Label ID="Label1" CssClass="wideLabel" runat="server" Text="Title:"></asp:Label>
    <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator runat ="server" ForeColor="Red" ControlToValidate ="txtTitle" ErrorMessage ="Title is required!" />
    
    <br />
    <asp:Label ID="Label2" CssClass="wideLabel" runat="server" Text="Artist:"></asp:Label>
    <asp:TextBox ID="txtArtist" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator runat ="server" ForeColor="Red" ControlToValidate ="txtArtist" ErrorMessage ="Artist is required!" />
    
    <br />
    <asp:Label ID="Label3" CssClass="wideLabel" runat="server" Text="Rating:"></asp:Label>
    <asp:TextBox ID="txtRating" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator runat ="server" ForeColor="Red" ControlToValidate ="txtRating" ErrorMessage ="Rating is required!" />
    <asp:RangeValidator runat ="server" ForeColor="Red" ControlToValidate ="txtRating" Type="Integer" MinimumValue="1" MaximumValue="5" ErrorMessage ="Rating must be between 1 and 5 (inclusive)!" />

    <br />
    <asp:Label ID="Label4" CssClass="wideLabel" runat="server" Text="Price:"></asp:Label>
    <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator runat ="server" ForeColor="Red" ControlToValidate ="txtPrice" ErrorMessage ="Price is required!" />
    <asp:CompareValidator runat ="server" ForeColor="Red" ControlToValidate="txtPrice" Type="Currency" Display="Dynamic" Operator="DataTypeCheck" ErrorMessage ="Price must be in valid currency format!" />

    <br />
    <br />
    <asp:Button ID="btnAddDVD" runat="server" Font-Bold="True" OnClick="btnAddDVD_Click" Text="Add DVD" />
    <br />
    <br />
    <asp:Label ID="dbErrorLabel" runat="server" ForeColor="Red"></asp:Label>
</asp:Content>
