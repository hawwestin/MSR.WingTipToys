<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="problem2.aspx.cs" Inherits="Zad2.problem2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            podaj swoje imie:
            <asp:TextBox ID="imieTextBox" runat="server"></asp:TextBox>
            <br />
            podaj plec;
            <asp:DropDownList ID="plecDropDownList" runat="server">
                <asp:ListItem Value="K">Kobieta</asp:ListItem>
                <asp:ListItem Value="M">Mezczyzna</asp:ListItem>
            </asp:DropDownList>
            <br />
        </div>
        <asp:Button ID="wyslijButton" runat="server" OnClick="wyslijButton_Click" Text="Wyswietl" />
    </form>
</body>
</html>
