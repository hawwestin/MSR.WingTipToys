<%@ Page Title="" Language="C#" MasterPageFile="~/SzablonStrony.Master" AutoEventWireup="true" CodeBehind="Ankieta.aspx.cs" Inherits="zadanie3.Ankieta" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/Adv/adv.xml" />
    <br />
    <asp:MultiView ID="mainMultiView" runat="server">
        <asp:View ID="ankietaGlowna" runat="server">
            imię:<br />
            <asp:TextBox ID="imieTextBox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                ControlToValidate="imieTextBox"
                ErrorMessage="Pole imie jest wymagane">*</asp:RequiredFieldValidator>
            <br />
            płeć:<br />
            <asp:DropDownList ID="plecDropDownList" runat="server">
                <asp:ListItem Value="K">Kobieta</asp:ListItem>
                <asp:ListItem Value="M">Mezczyzna</asp:ListItem>
                <asp:ListItem Selected="True" Value="N">Nie podaje</asp:ListItem>
            </asp:DropDownList>
            <br />
            e-mail:
            <asp:TextBox ID="emailTextBox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                ControlToValidate="emailTextBox"
                ErrorMessage="Pole E-mail jest wymagane">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="emailTextBox" ErrorMessage="Nieprawidłowy adres email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            <br />
            telefon:
            <asp:TextBox ID="telTextBox" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="telTextBox" ErrorMessage="Nieprawidłowy numer telefonu" ValidationExpression="([0-9]+)$">*</asp:RegularExpressionValidator>
            <br />
            Ulica:
            <asp:TextBox ID="ulicaTextBox" runat="server"></asp:TextBox>
            <br />
            numer domu:
            <asp:TextBox ID="domTextBox" runat="server"></asp:TextBox>
            <br />
            numer mieszkania:
            <asp:TextBox ID="mieszTextBox" runat="server"></asp:TextBox>
            <br />
            kod pocztowy:
            <asp:TextBox ID="kodTextBox" runat="server"></asp:TextBox>
            <br />
            miejscowość:
            <asp:TextBox ID="miejscTextBox" runat="server"></asp:TextBox>
            <br />
            <asp:MultiView ID="ankietaMultiView" runat="server">
                <asp:View ID="nowyView" runat="server">
                    Wzrost:
                    <asp:TextBox ID="wzrostTextBox" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" 
                        runat="server" ControlToValidate="wzrostTextBox" 
                        ErrorMessage="Nieprawidłowy wzrost - podaj wzrost w centymetrach" 
                        ValidationExpression="([0-9]+)$">*</asp:RegularExpressionValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="wzrostTextBox" ErrorMessage="Podaj poprawny wzrost w zakresie od 50 do 250 cm" MaximumValue="250" MinimumValue="50" Type="Integer">*</asp:RangeValidator>
                    <br />
                    Rama roweru:
                    <br />
                    <asp:DropDownList ID="ramaDropDownList" runat="server">
                        <asp:ListItem Value="D">Damska</asp:ListItem>
                        <asp:ListItem Value="M">Meska</asp:ListItem>
                        <asp:ListItem Value="N">Nie ma znaczenia</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    Marka:<br />
                    <asp:ListBox ID="markaListBox" runat="server">
                        <asp:ListItem Value="C">Cataye</asp:ListItem>
                        <asp:ListItem Value="G">Giant</asp:ListItem>
                        <asp:ListItem Value="Ke">Kenda</asp:ListItem>
                        <asp:ListItem Value="Kr">Kross</asp:ListItem>
                        <asp:ListItem Value="N">Nie ma znaczenia</asp:ListItem>
                    </asp:ListBox>
                    <br />
                    Kwota planowanych wydatków:<br />
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                        <asp:ListItem Value="0">Nie ma znaczenia</asp:ListItem>
                        <asp:ListItem Value="5">do 500zł</asp:ListItem>
                        <asp:ListItem Value="10">500 - 1000 zł</asp:ListItem>
                        <asp:ListItem Value="15">1000-1500zł</asp:ListItem>
                        <asp:ListItem Value="20">pow. 1500 zł</asp:ListItem>
                        <asp:ListItem Value="1">Zakres</asp:ListItem>
                    </asp:RadioButtonList>
                    od:
                    <asp:TextBox ID="odTextBox" runat="server" />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" 
                        runat="server" ControlToValidate="odTextBox" 
                        ErrorMessage="Nieprawidłowa kwota - podaj w zł" 
                        ValidationExpression="([0-9]+)$">*</asp:RegularExpressionValidator>
                    <br />
                    do:
                    <asp:TextBox ID="doTextBox" runat="server" />

                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" 
                        runat="server" 
                        ControlToValidate="doTextBox" 
                        ErrorMessage="Nieprawidłowa kwota - podaj w zł"
                        ValidationExpression="([0-9]+)$">*</asp:RegularExpressionValidator>


                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="odTextBox" ControlToValidate="doTextBox" ErrorMessage="wartość w polu Do musi być większa od wartości w polu od" Operator="GreaterThan" Type="Integer">*</asp:CompareValidator>


                    <br />

                </asp:View>


                <asp:View ID="wycieczkiView" runat="server">
                    Rodzaj posiadanego roweru :
                    <br />
                    <asp:ListBox ID="posiadaListBox" runat="server">
                        <asp:ListItem Value="G" Text="Górski" />
                        <asp:ListItem Value="M" Text="Miejski" />
                        <asp:ListItem Value="S" Text="Szosowy" />
                        <asp:ListItem Value="B" Text="BMX" />
                        <asp:ListItem Value="D" Text="Dziecięcy" />
                        <asp:ListItem Value="N" Text="Nie wiem" />
                    </asp:ListBox>

                    <br />
                    <br />

                    Data ostatniej wycieczki:<br />
                    <asp:Calendar ID="ostatniaCalendar" runat="server"></asp:Calendar>
                    Data następnej wycieczki:<br />
                    <asp:Calendar ID="nastepnaCalendar" runat="server"></asp:Calendar>
                    <br />
                    Ilość km średnio na jednej wycieczne:
                    <asp:TextBox ID="kmTextBox" runat="server" />
                    <br />
                    Poziom Umiejętności:
                    <asp:DropDownList runat="server">
                        <asp:ListItem Value="P" Text="Początkujący" />
                        <asp:ListItem Value="S" Text="ŚrednioZawwansowany" />
                        <asp:ListItem Value="Z" Text="Zaawansowany" />
                    </asp:DropDownList>

                    <br />

                </asp:View>
            </asp:MultiView>
            Preferowany rodzaj kontatku: 
            <asp:CheckBoxList runat="server">
                <asp:ListItem Value="E" Text="E-Mail" />
                <asp:ListItem Value="T" Text="Telefon" />
                <asp:ListItem Value="O" Text="Osobisty" />
            </asp:CheckBoxList>
            <br />

            <asp:Button ID="WyswietlButton" Text="Wyświetl" runat="server" OnClick="WyswietlButton_Click" />
        </asp:View>
        <asp:View ID="podsumowanie" runat="server">
            Dziękujemy za wypełnienie ankiety <a href="Default.aspx">powrót</a>.
        </asp:View>
    </asp:MultiView>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
</asp:Content>
