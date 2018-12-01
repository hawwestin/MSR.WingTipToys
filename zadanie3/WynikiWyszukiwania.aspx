<%@ Page Title="" Language="C#" MasterPageFile="~/SzablonStrony.Master" AutoEventWireup="true" CodeBehind="WynikiWyszukiwania.aspx.cs" Inherits="zadanie3.WynikiWyszukiwania" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="WynikiWyszukiwaniaGridView" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID">
        <Columns>
            <asp:HyperLinkField />
        </Columns>
    
    
    </asp:GridView>
</asp:Content>
