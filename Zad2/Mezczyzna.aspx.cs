using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Zad2
{
    public partial class Mezczyzna : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string display = $"Witaj {Request.QueryString["imie"]}<br/>";
            //DropDownList dropDownList = (DropDownList)PreviousPage.FindControl("plecDropDownList");
            //if (dropDownList.SelectedValue == "K")
            //{
            //    display += "jestes kobieta";
            //}
            //else if (dropDownList.SelectedValue == "M")
            //{
            //    display += "jestes mezczyzna";
            //}
            wyswietlLabel.Text = display;
        }

        protected void wyslijButton_Click(object sender, EventArgs e)
        {
            Server.Transfer($"Dziekujemy.aspx?imie={Request.QueryString["imie"]}");
        }
    }
}