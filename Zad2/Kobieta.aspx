<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Kobieta.aspx.cs" Inherits="Zad2.Kobieta" %>

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
            <br />
            Wzrost :
            <asp:TextBox ID="wzrostTextBox" runat="server"></asp:TextBox>
            <br />
            Numer ubrania:<asp:TextBox ID="nrUbrTextBox" runat="server"></asp:TextBox>
            <br />
            Etc:<br />
            <asp:Button ID="wyslijButton" runat="server" OnClick="Button1_Click" Text="wyslij" />
        </div>
    </form>
</body>
</html>
