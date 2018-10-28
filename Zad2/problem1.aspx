<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="problem1.aspx.cs" Inherits="Zad2.zadanie2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Dzisiaj jest:
            <asp:Label ID="todayLabel" runat="server"></asp:Label>
            <br />
            <br />
            Podaj swoje imię:
            <asp:TextBox ID="imieTextBox" runat="server"></asp:TextBox>
&nbsp;&nbsp;
            <asp:Button ID="wyswietlButton" runat="server" OnClick="wyswietlButton_Click" Text="Wyswietl" />
            <br />
            <br />
            <asp:Label ID="imieLabel" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
