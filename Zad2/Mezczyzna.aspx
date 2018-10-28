<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mezczyzna.aspx.cs" Inherits="Zad2.Mezczyzna" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="wyswietlLabel" runat="server" Text="Label"></asp:Label>
            <br />
            Podaj wzrost:<asp:TextBox ID="wzrostTextBox" runat="server"></asp:TextBox>
            <br />
            podaj numer ubrania:<asp:TextBox ID="nrUbrTextBox" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="wyslijButton" runat="server" OnClick="wyslijButton_Click" Text="wyslij" />
        </div>
    </form>
</body>
</html>
