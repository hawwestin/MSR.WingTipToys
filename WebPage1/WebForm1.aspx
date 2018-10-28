<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebPage1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #Select1 {
            width: 184px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            podaj imie:&nbsp;
            <asp:TextBox ID="ImieTextBox" runat="server"></asp:TextBox>
            <br />
            podaj płeć:
            <asp:DropDownList ID="PlecDropDownList" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem Value="M">men</asp:ListItem>
                <asp:ListItem Value="K">women</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:Button ID="PokazButton" runat="server" OnClick="Button1_Click" Text="Button" />
            <br />
            <asp:Label ID="WyswietlLabel" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <br />

        </div>
        <asp:Button ID="WyslijButton" runat="server" OnClick="WyslijButton_Click" Text="wyslij" />
    </form>
</body>
</html>
