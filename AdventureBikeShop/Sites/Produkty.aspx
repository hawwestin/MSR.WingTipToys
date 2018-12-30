<%@ Page Title="" Language="C#" MasterPageFile="~/SzablonStrony.Master" AutoEventWireup="true" CodeBehind="Produkty.aspx.cs" Inherits="AdventureBikeShop.Produkty" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:EntityDataSource 
        ID="KategorieEntityDataSource" runat="server" ConnectionString="name=AdventureWorksLT_DataEntities" DefaultContainerName="AdventureWorksLT_DataEntities" EnableFlattening="False" EntitySetName="ProductCategory" Select="it.[ProductCategoryID], it.[Name]">
    </asp:EntityDataSource>
    <asp:ListBox ID="KategorieListBox" runat="server" DataSourceID="KategorieEntityDataSource" AutoPostBack="True" DataTextField="Name" DataValueField="ProductCategoryID"></asp:ListBox>
    <br />
    <asp:EntityDataSource ID="PodkategorieEntityDataSource" runat="server" ConnectionString="name=AdventureWorksLT_DataEntities" DefaultContainerName="AdventureWorksLT_DataEntities" EnableFlattening="False" EntitySetName="ProductCategory" Select="it.[ProductCategoryID], it.[Name]">
    </asp:EntityDataSource>
    <br />
    <br />
    <asp:ListBox ID="PodkategorieListBox" runat="server" AutoPostBack="True" DataSourceID="PodkategorieEntityDataSource" DataTextField="Name" DataValueField="ProductCategoryID"></asp:ListBox>
    <br />
    <asp:EntityDataSource ID="ProduktyEntityDataSource" runat="server" ConnectionString="name=AdventureWorksLT_DataEntities" DefaultContainerName="AdventureWorksLT_DataEntities" EnableFlattening="False" EntitySetName="Product" Select="it.[ProductID], it.[Name], it.[ProductNumber], it.[Color], it.[ListPrice]">
    </asp:EntityDataSource>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ProduktyEntityDataSource" EnableViewState="False">
    </asp:GridView>
</asp:Content>
