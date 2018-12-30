<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Szukaj.ascx.cs" Inherits="AdventureBikeShop.Kontrolki.Szukaj" %>
<p>
    Podaj nazwę produktu:
    <asp:TextBox ID="nazwaTextBox" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="NazwaRequiredFieldValidator" runat="server" ControlToValidate="nazwaTextBox" ErrorMessage="Podaj fragment nazwy produktu">*</asp:RequiredFieldValidator>
</p>
<p>
    <asp:Button ID="szukajButton" runat="server" OnClick="szukajButton_Click" Text="Szukaj" />
</p>
<p>
    &nbsp;</p>

