<%@ Page Title="" Language="C#" MasterPageFile="~/SzablonStrony.Master" AutoEventWireup="true" CodeBehind="Produkty.aspx.cs" Inherits="AdventureBikeShop.Produkty" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:LinqDataSource runat="server" ID="KategorieLinqDataSource" ContextTypeName="AdventureBikeShop.App_Code.AdventureWorksDataContext" TableName="ProductCategories" Where="ParentProductCategoryID=null" Select="new (ProductCategoryID, Name)" EntityTypeName=""></asp:LinqDataSource>
    <asp:ListBox ID="KategorieListBox" runat="server" DataSourceID="KategorieLinqDataSource" AutoPostBack="True" DataTextField="Name" DataValueField="ProductCategoryID"></asp:ListBox>
    <br />
    <asp:LinqDataSource ID="PodkategorieLinqDataSource" runat="server" ContextTypeName="AdventureBikeShop.App_Code.AdventureWorksDataContext" EntityTypeName="" Select="new (ProductCategoryID, Name)" TableName="ProductCategories" Where="ParentProductCategoryID == @ParentProductCategoryID">
        <WhereParameters>
            <asp:ControlParameter ControlID="KategorieListBox" DefaultValue="-1" Name="ParentProductCategoryID" PropertyName="SelectedValue" Type="Int32" />
        </WhereParameters>
    </asp:LinqDataSource>
    <br />
    <asp:ListBox ID="PodkategorieListBox" runat="server" AutoPostBack="True" DataSourceID="PodkategorieLinqDataSource" DataTextField="Name" DataValueField="ProductCategoryID"></asp:ListBox>
    <br />
    <asp:LinqDataSource ID="ProduktyLinqDataSource" runat="server" ContextTypeName="AdventureBikeShop.App_Code.AdventureWorksDataContext" EntityTypeName="" Select="new (ProductID, Name, ProductNumber, Color, ListPrice)" TableName="Products" Where="ProductCategoryID == @ProductCategoryID">
        <WhereParameters>
            <asp:ControlParameter ControlID="PodkategorieListBox" DefaultValue="-1" Name="ProductCategoryID" PropertyName="SelectedValue" Type="Int32" />
        </WhereParameters>
    </asp:LinqDataSource>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="ProduktyLinqDataSource" EnableViewState="False">
        <Columns>
            <asp:HyperLinkField AccessibleHeaderText="Nazwa Produktu" DataNavigateUrlFields="ProductID" DataNavigateUrlFormatString="~/Sites/Szczegoly.aspx?id{0}" DataTextField="Name" />
            <asp:BoundField AccessibleHeaderText="Numer katalogowy" DataField="ProductNumber" HeaderText="ProductNumber" ReadOnly="True" SortExpression="ProductNumber" />
            <asp:BoundField AccessibleHeaderText="Kolor" DataField="Color" HeaderText="Color" ReadOnly="True" SortExpression="Color" />
            <asp:BoundField AccessibleHeaderText="Cena" DataField="ListPrice" DataFormatString="{0:c}" HeaderText="ListPrice" ReadOnly="True" SortExpression="ListPrice" />
        </Columns>
    </asp:GridView>
</asp:Content>
