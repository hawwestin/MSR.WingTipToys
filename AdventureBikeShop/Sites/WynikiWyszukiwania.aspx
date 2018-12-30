<%@ Page Title="" Language="C#" MasterPageFile="~/SzablonStrony.Master" AutoEventWireup="true" CodeBehind="WynikiWyszukiwania.aspx.cs" Inherits="AdventureBikeShop.Sites.WynikiWyszukiwania" %>

<%@ Register Src="~/Kontrolki/Szukaj.ascx" TagPrefix="uc1" TagName="Szukaj" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Wyniki wyszukiwania</p>
    <p>
        <asp:GridView ID="WynikiWyszukiwaniaGridView" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID">
            <Columns>
                <asp:HyperLinkField AccessibleHeaderText="Nazwa produktu" DataNavigateUrlFields="ProductID" DataNavigateUrlFormatString="~/sites/Szczegoly.aspx?id={0}" DataTextField="Name" Text="Nazwa produktu" />
                <asp:BoundField DataField="ProductNumber" HeaderText="Numer katalogowy" SortExpression="ProductNumber" />
                <asp:BoundField DataField="Color" HeaderText="Kolor" SortExpression="Color" />
                <asp:BoundField DataField="ListPrice" DataFormatString="{0:c}" HeaderText="Cena" SortExpression="ListPrice" />
            </Columns>
        </asp:GridView>
    </p>
    <br />
    Szukaj
    <br />
    <uc1:Szukaj runat="server" id="Szukaj" />
</asp:Content>
