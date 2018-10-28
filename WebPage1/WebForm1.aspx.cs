using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebPage1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string display = $"Witaj {ImieTextBox.Text}!</br>";
            if (PlecDropDownList.SelectedValue == "K")
            {
                display += "jestes kobieta";
            }
            else if (PlecDropDownList.SelectedValue == "M")
            {
                display += "jestes mezczyzna";
            }
            WyswietlLabel.Text = display;
        }

        protected void WyslijButton_Click(object sender, EventArgs e)
        {
            Server.Transfer($"Ankieta.aspx?imie={ImieTextBox.Text}");
        }
    }
}