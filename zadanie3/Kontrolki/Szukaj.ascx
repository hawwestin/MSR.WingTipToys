<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Szukaj.ascx.cs" Inherits="zadanie3.Kontrolki.Szukaj" %>
<p>
    Podaj nazwę produktu:
    <asp:TextBox ID="nazwaTextBox" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="NazwaRequiredFieldValidator" runat="server" ControlToValidate="nazwaTextBox" ErrorMessage="Podaj fragment nazwy produktu">*</asp:RequiredFieldValidator>
</p>
<asp:Button ID="szukajButton" runat="server" OnClick="szukajButton_Click" style="height: 26px" Text="Szukaj" />

