<%@ Page Title="Browse DVDs" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="khoruzhenkoDVD._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Please browse the list of DVDs.</h2>
    <p>Welcome, and enjoy your time browsing this excellent DVD collection!</p>

    <asp:DataList id="DVDDatalist" runat="server" OnItemCommand="DVDDatalist_ItemCommand">
        <HeaderTemplate>
            <h3>DVD List</h3>
        </HeaderTemplate>
        
        <ItemTemplate>
            Title: <strong><%#Eval("DVDtitle")%></strong><br /> 
            Artist: <strong><%#Eval("DVDartist")%></strong><br /> 
            Rating: <strong><%#Eval("DVDrating")%></strong><br /> 
            Price: <strong><%#Eval("DVDPrice", "{0:C}")%></strong><br /><br /> 

            <asp:LinkButton ID ="DetailsButton" runat ="server" 
                Text="Details"
                CommandName ="details" 
                CommandArgument = <%# Eval("DVDID")%> />

            <asp:LinkButton ID ="BuyButton" runat ="server" 
                Text="Buy"
                CommandName ="buy" 
                CommandArgument = <%# Eval("DVDID")%> />

        </ItemTemplate> 
        
        <SeparatorTemplate>
            <hr />
        </SeparatorTemplate> 
    </asp:DataList>

</asp:Content>
