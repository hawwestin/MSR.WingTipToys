using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Zad2
{
    public partial class problem2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void wyslijButton_Click(object sender, EventArgs e)
        {
            if (plecDropDownList.SelectedValue == "K") {
                Response.Redirect($"Kobieta.aspx?imie={imieTextBox.Text}");
            }
            else if (plecDropDownList.SelectedValue == "M") {
                Response.Redirect($"Mezczyzna.aspx?imie={imieTextBox.Text}");
            }
        }
    }
}